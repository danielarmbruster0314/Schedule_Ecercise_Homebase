import {useState, useEffect} from 'react';
import './App.css';

function App() {
const [employees, setEmployees] = useState([])
 const days_of_the_week = ['Sun', 'Mon', 'Tues', 'Wens', 'Thurs', 'Fri', 'Sat']
 
 
 useEffect(() => {
  fetch('http://localhost:3000/shifts?sort_by=first_name')
  .then((resp) => resp.json())
  .then((staff) => setEmployees(staff))
  },[]);

  function handleSort(value){
    fetch(`http://localhost:3000/shifts?sort_by=${value}`)
    .then((resp) => resp.json())
    .then((staff) => setEmployees(staff))
  }
 

  return (
    <div className="App">
      <label for="options">Sort by</label>
        <select name="options" onChange={(e)=>handleSort(e.target.value)}id="pet-select">
            <option value="first_name">First Name</option>
            <option value="last_name">Last Name</option>
        </select>
     <table>
       <thead>
          <tr>
            <th></th>
              {days_of_the_week.map((day,index) => {
                const array_of_shifts = employees?.map((employee)=>employee.shifts)
                const shifts = array_of_shifts?.flat()
                const shifts_for_the_day = shifts.filter(shift => shift.day === index)
                const hours_for_day = shifts_for_the_day.map((shift)=>shift.duration)
                const initialValue = 0;
                const totalhours = hours_for_day.reduce(
                (previousValue, currentValue) => previousValue + currentValue,
                  initialValue
                  );
                return (<th>{day} ({totalhours} hrs)</th>)
          })}
          </tr> 
        </thead>
        <tbody>
          {employees.map((employee, index) => {
           const shift_hours = employee.shifts.map((shift)=> shift.duration)
           const initialValue = 0;
                const totalhours = shift_hours.reduce(
                (previousValue, currentValue) => previousValue + currentValue,
                  initialValue
                  );
           
           return( <tr key={index}>
              <th>{employee.name} ({totalhours} hrs)</th>
              {days_of_the_week.map((day, index)=>{
                const corresponding_shift = employee.shifts?.filter(shift => shift.day === index);
                return (<td
                style={{
                  backgroundColor: corresponding_shift[0]? corresponding_shift[0]?.color : 'white'
                }}
                
                >{corresponding_shift[0]? (
                  <>
                  <p>
                    {corresponding_shift[0]?.start_at} - {corresponding_shift[0]?.end_at}
                  </p>
                  <p>
                  {corresponding_shift[0]?.role}
                  </p>
                  </>): ''}</td>)
              })}
            </tr>)
          })}
      </tbody>
      </table>
    </div>
  );
}

export default App;
