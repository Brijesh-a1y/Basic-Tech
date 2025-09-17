
function MouseEvent(){
    return(
        <>

            <div style={{

                backgroundColor:'black',
                color:'white',
                // margin:'50px',
                padding:'50px'
            }} onMouseEnter={()=>{

              console.log('Mouse Entered div');  
            }}
            onMouseLeave={()=>{
                console.log('Mouse leave');
            }}
            >Welcome to mouse event</div>

        </>
    )
}

export default MouseEvent;