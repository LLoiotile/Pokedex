import React, { useState } from 'react';
import Button from 'react-bootstrap/Button';
import Modal from 'react-bootstrap/Modal';

const PokeModal = ({ typeOne, typeTwo, stringDexNumber }) => {
  const [show, setShow] = useState(false);
  const handleClose = () => setShow(false);
  const handleShow = () => setShow(true);

  let image = '';
  switch (stringDexNumber) {
    case '001':
      image = require('./images/001.jpg');
      break;
    case '002':
      image = require('./images/002.jpg');
      break;
    case '003':
      image = require('./images/003.jpg');
      break;
    case '004':
      image = require('./images/004.jpg');
      break;
    case '005':
      image = require('./images/005.jpg');
      break;
    case '006':
      image = require('./images/006.jpg');
      break;
    case '007':
      image = require('./images/007.jpg');
      break;
    case '008':
      image = require('./images/008.jpg');
      break;
    case '009':
      image = require('./images/009.jpg');
      break;
    case '010':
      image = require('./images/010.jpg');
      break;
    case '011':
      image = require('./images/011.jpg');
      break;
    case '012':
      image = require('./images/012.jpg');
      break;
    case '013':
      image = require('./images/013.jpg');
      break;
    case '014':
      image = require('./images/014.jpg');
      break;
    case '015':
      image = require('./images/015.jpg');
      break;
    case '016':
      image = require('./images/016.jpg');
      break;
    case '017':
      image = require('./images/017.jpg');
      break;
    case '018':
      image = require('./images/018.jpg');
      break;
    case '019':
      image = require('./images/019.jpg');
      break;
    case '020':
      image = require('./images/020.jpg');
      break;
    case '021':
      image = require('./images/021.jpg');
      break;
    case '022':
      image = require('./images/022.jpg');
      break;
    case '023':
      image = require('./images/023.jpg');
      break;
    case '024':
      image = require('./images/024.jpg');
      break;
    case '025':
      image = require('./images/025.jpg');
      break;
    case '026':
      image = require('./images/026.jpg');
      break;
    case '027':
      image = require('./images/027.jpg');
      break;
    case '028':
      image = require('./images/028.jpg');
      break;
    case '029':
      image = require('./images/029.jpg');
      break;
    case '030':
      image = require('./images/030.jpg');
      break;
    case '031':
      image = require('./images/031.jpg');
      break;
    case '032':
      image = require('./images/032.jpg');
      break;
    case '033':
      image = require('./images/033.jpg');
      break;
    case '034':
      image = require('./images/034.jpg');
      break;
    case '035':
      image = require('./images/035.jpg');
      break;
    case '036':
      image = require('./images/036.jpg');
      break;
    case '037':
      image = require('./images/037.jpg');
      break;
    case '038':
      image = require('./images/038.jpg');
      break;
    case '039':
      image = require('./images/039.jpg');
      break;
    case '040':
      image = require('./images/040.jpg');
      break;
    case '041':
      image = require('./images/041.jpg');
      break;
    case '042':
      image = require('./images/042.jpg');
      break;
    case '043':
      image = require('./images/043.jpg');
      break;
    case '044':
      image = require('./images/044.jpg');
      break;
    case '045':
      image = require('./images/045.jpg');
      break;
    case '046':
      image = require('./images/046.jpg');
      break;
    case '047':
      image = require('./images/047.jpg');
      break;
    case '048':
      image = require('./images/048.jpg');
      break;
    case '049':
      image = require('./images/049.jpg');
      break;
    case '050':
      image = require('./images/050.jpg');
      break;
    case '051':
      image = require('./images/051.jpg');
      break;
    case '052':
      image = require('./images/052.jpg');
      break;
    case '053':
      image = require('./images/053.jpg');
      break;
    case '054':
      image = require('./images/054.jpg');
      break;
    case '055':
      image = require('./images/055.jpg');
      break;
    case '056':
      image = require('./images/056.jpg');
      break;
    case '057':
      image = require('./images/057.jpg');
      break;
    case '058':
      image = require('./images/058.jpg');
      break;
    case '059':
      image = require('./images/059.jpg');
      break;
    case '060':
      image = require('./images/060.jpg');
      break;
    case '061':
      image = require('./images/061.jpg');
      break;
    case '062':
      image = require('./images/062.jpg');
      break;
    case '063':
      image = require('./images/063.jpg');
      break;
    case '064':
      image = require('./images/064.jpg');
      break;
    case '065':
      image = require('./images/065.jpg');
      break;
    case '066':
      image = require('./images/066.jpg');
      break;
    case '067':
      image = require('./images/067.jpg');
      break;
    case '068':
      image = require('./images/068.jpg');
      break;
    case '069':
      image = require('./images/069.jpg');
      break;
    case '070':
      image = require('./images/070.jpg');
      break;
    case '071':
      image = require('./images/071.jpg');
      break;
    case '072':
      image = require('./images/072.jpg');
      break;
    case '073':
      image = require('./images/073.jpg');
      break;
    case '074':
      image = require('./images/074.jpg');
      break;
    case '075':
      image = require('./images/075.jpg');
      break;
    case '076':
      image = require('./images/076.jpg');
      break;
    case '077':
      image = require('./images/077.jpg');
      break;
    case '078':
      image = require('./images/078.jpg');
      break;
    case '079':
      image = require('./images/079.jpg');
      break;
    case '080':
      image = require('./images/080.jpg');
      break;
    case '081':
      image = require('./images/081.jpg');
      break;
    case '082':
      image = require('./images/082.jpg');
      break;
    case '083':
      image = require('./images/083.jpg');
      break;
    case '084':
      image = require('./images/084.jpg');
      break;
    case '085':
      image = require('./images/085.jpg');
      break;
    case '086':
      image = require('./images/086.jpg');
      break;
    case '087':
      image = require('./images/087.jpg');
      break;
    case '088':
      image = require('./images/088.jpg');
      break;
    case '089':
      image = require('./images/089.jpg');
      break;
    case '090':
      image = require('./images/090.jpg');
      break;
    case '091':
      image = require('./images/091.jpg');
      break;
    case '092':
      image = require('./images/092.jpg');
      break;
    case '093':
      image = require('./images/093.jpg');
      break;
    case '094':
      image = require('./images/094.jpg');
      break;
    case '095':
      image = require('./images/095.jpg');
      break;
    case '096':
      image = require('./images/096.jpg');
      break;
    case '097':
      image = require('./images/097.jpg');
      break;
    case '098':
      image = require('./images/098.jpg');
      break;
    case '099':
      image = require('./images/099.jpg');
      break;
    case '100':
      image = require('./images/100.jpg');
      break;
    case '101':
      image = require('./images/101.jpg');
      break;
    case '102':
      image = require('./images/102.jpg');
      break;
    case '103':
      image = require('./images/103.jpg');
      break;
    case '104':
      image = require('./images/104.jpg');
      break;
    case '105':
      image = require('./images/105.jpg');
      break;
    case '106':
      image = require('./images/106.jpg');
      break;
    case '107':
      image = require('./images/107.jpg');
      break;
    case '108':
      image = require('./images/108.jpg');
      break;
    case '109':
      image = require('./images/109.jpg');
      break;
    case '110':
      image = require('./images/110.jpg');
      break;
    case '111':
      image = require('./images/111.jpg');
      break;
    case '112':
      image = require('./images/112.jpg');
      break;
    case '113':
      image = require('./images/113.jpg');
      break;
    case '114':
      image = require('./images/114.jpg');
      break;
    case '115':
      image = require('./images/115.jpg');
      break;
    case '116':
      image = require('./images/116.jpg');
      break;
    case '117':
      image = require('./images/117.jpg');
      break;
    case '118':
      image = require('./images/118.jpg');
      break;
    case '119':
      image = require('./images/119.jpg');
      break;
    case '120':
      image = require('./images/120.jpg');
      break;
    case '121':
      image = require('./images/121.jpg');
      break;
    case '122':
      image = require('./images/122.jpg');
      break;
    case '123':
      image = require('./images/123.jpg');
      break;
    case '124':
      image = require('./images/124.jpg');
      break;
    case '125':
      image = require('./images/125.jpg');
      break;
    case '126':
      image = require('./images/126.jpg');
      break;
    case '127':
      image = require('./images/127.jpg');
      break;
    case '128':
      image = require('./images/128.jpg');
      break;
    case '129':
      image = require('./images/129.jpg');
      break;
    case '130':
      image = require('./images/130.jpg');
      break;
    case '131':
      image = require('./images/131.jpg');
      break;
    case '132':
      image = require('./images/132.jpg');
      break;
    case '133':
      image = require('./images/133.jpg');
      break;
    case '134':
      image = require('./images/134.jpg');
      break;
    case '135':
      image = require('./images/135.jpg');
      break;
    case '136':
      image = require('./images/136.jpg');
      break;
    case '137':
      image = require('./images/137.jpg');
      break;
    case '138':
      image = require('./images/138.jpg');
      break;
    case '139':
      image = require('./images/139.jpg');
      break;
    case '140':
      image = require('./images/140.jpg');
      break;
    case '141':
      image = require('./images/141.jpg');
      break;
    case '142':
      image = require('./images/142.jpg');
      break;
    case '143':
      image = require('./images/143.jpg');
      break;
    case '144':
      image = require('./images/144.jpg');
      break;
    case '145':
      image = require('./images/145.jpg');
      break;
    case '146':
      image = require('./images/146.jpg');
      break;
    case '147':
      image = require('./images/147.jpg');
      break;
    case '148':
      image = require('./images/148.jpg');
      break;
    case '149':
      image = require('./images/149.jpg');
      break;
    case '150':
      image = require('./images/150.jpg');
      break;
    case '151':
      image = require('./images/151.jpg');
      break;
    default:
      break;
  }

  const setTypeBtnBgColor = (type) => {
    let backgroundColor = '';
    switch (type) {
      case 'BUG':
        backgroundColor = '#ab2';
        break;
      case 'DRAGON':
        backgroundColor = '#76e';
        break;
      case 'ELECTRIC':
        backgroundColor = '#fc3';
        break;
      case 'FIGHTING':
        backgroundColor = '#b54';
        break;
      case 'FIRE':
        backgroundColor = '#f42';
        break;
      case 'FLYING':
        backgroundColor = '#89f';
        break;
      case 'GHOST':
        backgroundColor = '#66b';
        break;
      case 'GRASS':
        backgroundColor = '#7c5';
        break;
      case 'GROUND':
        backgroundColor = '#db5';
        break;
      case 'ICE':
        backgroundColor = '#6cf';
        break;
      case 'NORMAL':
        backgroundColor = '#aa9';
        break;
      case 'POISON':
        backgroundColor = '#a59';
        break;
      case 'PSYCHIC':
        backgroundColor = '#f59';
        break;
      case 'ROCK':
        backgroundColor = '#ba6';
        break;
      case 'WATER':
        backgroundColor = '#39f';
        break;
      case 'DARK':
        backgroundColor = '#754';
        break;
      case 'FAIRY':
        backgroundColor = '#e9e';
        break;
      case 'STEEL':
        backgroundColor = '#aab';
        break;
      default:
        break;
    }
    return backgroundColor;
  };

  return (
    <>
      <Button variant='primary' onClick={handleShow}>
        SPLASH ART
      </Button>
      <Modal show={show} onHide={handleClose}>
        <Modal.Header closeButton>
          <Button
            style={{ backgroundColor: setTypeBtnBgColor(typeOne) }}
            className='mx-2'>
            {typeOne}
          </Button>
          {typeTwo && (
            <Button
              style={{ backgroundColor: setTypeBtnBgColor(typeTwo) }}
              className='mx-2'>
              {typeTwo}
            </Button>
          )}
        </Modal.Header>
        <Modal.Body>
          <img src={image} alt='pokemon' width='100%' />
        </Modal.Body>
      </Modal>
    </>
  );
};

export default PokeModal;
