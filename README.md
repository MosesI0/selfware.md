# ⚙️ selfware.md - Simple Demo for File Protocol Use

[![Download Release](https://img.shields.io/badge/Download-Release-brightgreen)](https://github.com/MosesI0/selfware.md/releases)

---

## 📄 What is selfware.md?

selfware.md is a demo app that shows how to use the Selfware Protocol. This protocol treats files as apps. It bundles data, logic, and views into a single file or folder. This demo includes draft templates and a small workspace you can run on your computer.

This app helps you understand how Selfware works by letting you open and test example files and scripts locally.

---

## 🖥️ System Requirements

To run selfware.md on Windows, your PC should have:

- Windows 10 or later  
- At least 4 GB of RAM  
- 500 MB of free disk space  
- Python 3.7 or higher installed (see how to check below)  
- Internet connection to download the files  

---

## 🚀 Getting Started: How to Download and Run on Windows

### 1. Visit the Download Page

Click this big link to open the page that holds the latest versions of selfware.md:

[Download selfware.md Releases](https://github.com/MosesI0/selfware.md/releases)

You will find several release files here. Look for the latest version folder or entry.

### 2. Download the Files

- Download the file named `template.self.zip` or a similar archive that matches the demo workspace.
- Download the runtime server script if available, typically called `server.py`.

Save these files to a folder you can easily access, like your Desktop or Documents folder.

### 3. Check Python Installation

selfware.md uses a small Python server to run the demo workspace.

- To see if Python is installed, open Command Prompt (press Windows key, type "cmd", and hit Enter).
- Type `python --version` and press Enter.
- If you see a version number like `Python 3.8.5`, Python is ready.
- If not, download and install Python from https://www.python.org/downloads/windows/.

Make sure to check the box "Add Python to PATH" during installation.

### 4. Extract the Files

- Right-click the downloaded ZIP file and choose "Extract All..."  
- Choose a folder like `selfware-demo` on your Desktop.

You should see files and folders such as the protocol drafts, content folders, and the `server.py` script inside.

### 5. Run the Local Server

- Open Command Prompt.
- Change the directory to where you extracted the files by typing:  
  `cd Desktop\selfware-demo\template.self\runtime`  
  (Adjust the path if you used a different folder)
- Start the server by typing:  
  `python server.py`  
- This script runs a minimal server on your PC to simulate how the protocol works.

The server should start without errors and show a message like "Server running on http://localhost:8000".

### 6. Open the Demo in Your Browser

- Open your web browser.
- Go to `http://localhost:8000`.
- You will see the demo workspace loaded with the protocol drafts and content.

You can interact with the demo to see how the Selfware Protocol bundles files and data.

---

## 📂 What’s Inside the Demo Workspace?

Inside the `template.self` folder, you will find:

- `selfware.md` — The main English protocol draft to read.
- `selfware-zh.md` — The Chinese edition of the protocol draft.
- `manifest.md` — A list of files and how they are packaged.
- `content/` — Files containing example data and memory for the demo.
- `runtime/server.py` — The small Python server script that runs locally.
- `entrypoint/` — Scripts that handle actions and user forms.

These pieces work together to show how Selfware works in practice.

---

## 🔧 How to Use the Demo

- Start the server as shown above.
- Access the local web interface in your browser.
- Read the protocol drafts to learn the ideas behind Selfware.
- Explore the content files to see what data and views look like.
- Try modifying some files if you want to test changes.
- Restart the server after file changes to apply them.

---

## ❓ Troubleshooting

- If the server does not start, check if Python is installed and correctly added to PATH.
- Make sure you run the Command Prompt in the correct folder where `server.py` is located.
- Close other apps that might use port 8000 on your computer or change the port number in `server.py`.
- If the web page doesn’t load, confirm that the server is running with no errors in the Command Prompt window.
- Restart your computer if you run into network or permission errors.

---

## 📥 Download Links

You can always visit the main releases page here to get the latest files:

[Download selfware.md Releases](https://github.com/MosesI0/selfware.md/releases)

This page lets you download the whole demo package and any updates.

---

## 📚 More Information

The Selfware Protocol is experimental. This demo helps you test how files can act as small apps. It bundles content and scripts in one place. It aims to be a simple way to share complex data and programs as single files.

For different language versions, see the links inside the demo or visit the repository README for:

- Chinese 中文  
- Italian Italiano  
- Japanese 日本語  
- French Français  
- German Deutsch  

---

## 📦 File Protocol Concepts

Selfware treats a file as an app. Data, logic, and interface live together. This means sharing an app is just sharing a file.

The demo shows this by packaging drafts, content, and scripts inside `.self` folders. You run them locally using the Python server to see how data and actions interact.

---

## 🛠️ Editing and Development

If you want to develop or edit the demo:

- Use any text editor to open `.md` or `.py` files.
- Update the contents or scripts.
- Save changes, then restart the server to see effects.
- Use this setup to test protocol concepts without complex installs.

---

## 📌 Key Points

- Download from the releases page above.
- Extract files before running.
- Python 3 is required for the server.
- Open `http://localhost:8000` in your web browser.
- Explore the demo content and protocol drafts.