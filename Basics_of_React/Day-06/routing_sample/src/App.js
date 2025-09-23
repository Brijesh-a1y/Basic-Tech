import Footer from "./components/Footer";
import NavBar from "./components/NavBar";
import HomePage from "./pages/HomePage";
import AboutPage from "./pages/AboutPage";
import {BrowserRouter,Routes, Route} from 'react-router-dom'
import ApiPage from "./pages/ApiPage";

function App() {
  return (
    <>
    <BrowserRouter>
      <NavBar></NavBar>
    
      <Routes>
        <Route path="/" element={<HomePage/>}> </Route>
        <Route path="/about" element={<AboutPage/>}> </Route>
        <Route path="/api" element={<ApiPage/>}> </Route>
      </Routes>
    
      <Footer></Footer>
    </BrowserRouter>
    </>
  );
}

export default App;
