# Dart Signature Pad

A simple, lightweight signature pad implemented in Dart without Flutter. Draw, clear, and save signatures with ease.

![Signature Pad Overview](images/signature_pad_overview.png)

## Table of Contents
- [Dart Signature Pad](#dart-signature-pad)
  - [Table of Contents](#table-of-contents)
  - [Features](#features)
  - [Installation](#installation)
  - [Usage](#usage)
    - [Drawing a Signature](#drawing-a-signature)
    - [Clearing the Signature](#clearing-the-signature)
    - [Saving the Signature](#saving-the-signature)
  - [Customization](#customization)
    - [Changing Canvas Size](#changing-canvas-size)
  - [Styling](#styling)

## Features

- Draw signatures using mouse or touch input
- Clear signature with a single click
- Save signature as PNG image
- Responsive design for various screen sizes

![Feature Showcase](images/feature_showcase.gif)

## Installation

1. Ensure you have Dart SDK installed on your system. If not, download it from [dart.dev](https://dart.dev/get-dart).

2. Clone this repository:
git clone https://github.com/yourusername/dart-signature-pad.git
Copy
3. Navigate to the project directory:
cd dart-signature-pad
Copy
4. Compile the Dart code to JavaScript:
dart compile js main.dart -o main.dart.js
Copy
5. Open `index.html` in your web browser to use the signature pad.

## Usage

### Drawing a Signature

Click and drag your mouse (or use your finger on touch devices) to draw on the signature pad.

![Drawing a Signature](images/drawing_signature.gif)

### Clearing the Signature

Click the "Clear" button to erase the entire signature and start over.

![Clear Button](images/clear_button.png)

### Saving the Signature

1. Click the "Save as Image" button.
2. A new tab will open with the signature as a PNG image.
3. Right-click on the image and select "Save image as..." to download it to your device.

![Save Button](images/save_button.png)

## Customization

### Changing Canvas Size

Modify the `width` and `height` attributes of the `<canvas>` element in `index.html`:

```html
<canvas id="signatureCanvas" width="500" height="300"></canvas>
```

## Styling
```
Edit the CSS in the <style> section of index.html to change colors, sizes, and layout:
css
Copy#signatureCanvas {
    border: 2px solid #3498db;
    border-radius: 5px;
}

button {
    background-color: #2ecc71;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
}

```
Contributing
Contributions are welcome! Please feel free to submit a Pull Request.
License
This project is licensed under the MIT License - see the LICENSE file for details.