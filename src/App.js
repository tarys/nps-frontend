import React, {Component} from 'react';
import {Button} from 'reactstrap';
import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css';

const RATING_MAX = 10;


function sendToServer(nps) {
    fetch(window.location.origin + '/topics/jsontest', {
        method: 'POST',
        mode: "cors",
        headers: {
            "Content-Type": "application/vnd.kafka.json.v2+json",
            "Accept": "application/vnd.kafka.v2+json",
        },
        body: JSON.stringify({
            records: [
                {
                    value: {
                        nps: parseInt(nps),
                    }
                }
            ]
        })
    }).catch(err => console.log(err))
}

function handleClick(event) {
    const nps = event.target.value;
    console.log("NPS clicked: " + nps);
    sendToServer(nps);
}

class App extends Component {
    render() {
        return (
            <div className="App">
                <p>Welcome!</p>
                <p>Please, rate us with values from 1 to {RATING_MAX}, where:</p>
                <ul>
                    <li>1 - completely unsatisfied</li>
                    <li>10 - totally satisfied</li>
                </ul>
                <Button onClick={handleClick} color="danger" value={1}>1</Button>
                <Button onClick={handleClick} color="danger" value={2}>2</Button>
                <Button onClick={handleClick} color="danger" value={3}>3</Button>
                <Button onClick={handleClick} color="danger" value={4}>4</Button>
                <Button onClick={handleClick} color="danger" value={5}>5</Button>
                <Button onClick={handleClick} color="danger" value={6}>6</Button>
                <Button onClick={handleClick} color="warning" value={7}>7</Button>
                <Button onClick={handleClick} color="warning" value={8}>8</Button>
                <Button onClick={handleClick} color="success" value={9}>9</Button>
                <Button onClick={handleClick} color="success" value={10}>10</Button>
            </div>
        );
    }
}

export default App;
