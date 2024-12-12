---
layout: post
title: "Mr Beast Accountability Co-working Session #1"
description: Getting started with AI-assisted coding
date: 2024-12-11 17:06:01
published: true
hidden: false
thumbnail: /assets/img/bureaucracy.webp
comment_issue_id: 5
---
Today I'm joining a [Mr Beast-style accountability co-working session](https://lu.ma/k9wclosu?tk=1yEyJQ) at [Builders Club](https://buildersclub.ca). It's my first one. I'm planning to document my progress over the next three hours in this blog post. At the end of the three hours, I'm hitting publish. 

Briefly about the agenda:

​ - **2:00 PM:** Round table check-in and goal-setting for the week and the day

​ - **3:20 PM:** Optional progress check-in to share updates or adjust goals

​ - **4:40 PM:** Wrap-up with optional demos or reflections on completed tasks

Over the last few months, I've been getting more and more interested in two AI-related topics: **AI-assisted coding** and **AI Agents**. I haven't done a good job at making time to dive into these topics, so I decided to use these co-working sessions to make time for that. 

This week I'll start with AI-assisted coding. I'm starting from scratch, so my first step was to ask my friends on the Builders Club slack if they can recommend any workflows and tools to get me started. Here were some responses:

> you can play around here it's fun if you want to get something visual before moving into a code based tool: https://lovable.dev/

> Chatgpt to write a product scope  
> feed it into- https://v0.dev  
> take the code  and scope document and drop it into https://www.cursor.com  
> if you want to skip set up might be useful https://codesandbox.io/  
> (not perfect but cld work!)  

> As always, it depends on “What’s your goal”.  
> If you’re thinking about doing “website-y” stuff, Claude has better support for getting things to work with Javascript and playing with them right in the web browser.  
> ChatGPT just launched “canvas” which does the same thing with Python code, but GUIs aren’t possible there. It’s best for data analysis,  
> In both of those options you have a tool that “writes the code for me” but you still have to get it out of those things to get it to run “the way you want it”. There’s a lot of copy/pasting back and forth between those tools and your IDE.  
> Cursor is arguably the best right now as a VS Code replacement that puts the AI right alongside your code and can work on the errors and bugs as you run them.  
> If I was going to do more than a “light” amount of coding, I would jump into Cursor.

> I’ve been running ollama locally then using the Continue IntelliJ plugin to select the models. Then I download models from huggingface.  

I ordered these in terms of what seems to me to be order of difficulty. 

(Update: during the co-working session, someone also suggested https://www.continue.dev as a VS code plugin). 

My goal for the session is to explore a few of the tools mentioned above and come up with a concrete proposal for a project to start building in the next co-working session. 

Let's go!

# Loveable

Ok, it looks very nice. It seems like I can just start typing stuff into this text box.

<figure>
<center>
  <img src="/assets/img/24-12-11-01.png" alt="test" style="width:100%; height:auto;">
</center>
</figure>

Let's start with a website idea that's been floating around in my head. Let's try:
<!-- > Create a static website where I can showcase educational carousels (slideshows). The website should have search functionality based on topics. The website should have the ability to browse carousels. It should be mobile native.  -->

<figure>
<center>
  <img src="/assets/img/24-12-11-03.png" alt="test" style="width:100%; height:auto;">
</center>
</figure>

Let's see what happens when I hit "go". Ok, I have to log in. I don't have an account, but it looks like I can log in with GitHub, so let's try that. That was easy. Now I can hit "go" again. 

It's taking a few mins to think. Looks like it's generating a bunch of code files that I'm not familiar with. 

<figure>
<center>
  <img src="/assets/img/24-12-11-02.png" alt="test" style="width:100%; height:auto;">
</center>
</figure>

Ok, wow, there is a website. It's got two carousels on it. I can click on one and it gives me a new page. 

<figure>
<center>
  <img src="/assets/img/24-12-11-04.png" alt="test" style="width:100%; height:auto;">
</center>
</figure>

The carousels I make have a portrait aspect ratio, so I might see if I can get it to change that. There is a box for me to request a change. 

> My carousels are going to have a portrait aspect ratio. Can you change the design to reflect that. Can you also showcase three carousels on the home page?

Ok, it made them the right aspect ratio, but they are too big. Let's try another request.

> Can you make the thumbnails smaller?

Ok, so it seems like I can get it to make some changes, and it responds to them, but it's not perfect. 

<figure>
<center>
  <img src="/assets/img/24-12-11-05.png" alt="test" style="width:100%; height:auto;">
</center>
</figure>

The search functionality seems to work though, so that's cool. 

<figure>
<center>
  <img src="/assets/img/24-12-11-06.png" alt="test" style="width:100%; height:auto;">
</center>
</figure>

There is a GitHub button. Looks like I can transfer the code to GitHub. Let's try that. 

Ok, crazy, it just made [this GitHub repo](https://github.com/abranczyk/slide-surfboard) with my website on it. 

It looks like I can edit this code locally and then publish it through Loveable. I'll come back to editing it later. 

For now, let's publish. You can see what how the site looks [here](https://slide-surfboard.lovable.app). You can see that search works, and you can click on a carousel and click through the slides. 

Obviously it's not amazing, but quite remarkable that the AI generated this from a few lines of prompt. 

# ChatGPT + v0 

Typing this into ChatGPT:
> I want to create a website. I will start with getting you to help me create the product scope. I will then feed it into https://v0.dev, then take the code and scope document and drop it into https://www.cursor.com.   
> Here is what I want to do. Can you help me create the product scope?  
> Create a static website where I can showcase educational carousels (slideshows). The website should have search functionality based on topics. The website should have the ability to browse carousels. It should be mobile native. 

You can see what ChatGPT came up with in Appendix A. Pretty fancy if you ask me. 

What's next? V0? Looks similar to Loveable. 

<figure>
<center>
  <img src="/assets/img/24-12-11-07.png" alt="test" style="width:100%; height:auto;">
</center>
</figure>

Let's see what happens if I give it the Project Overview, Features and Requirements, and Technical Specifications from ChatGPT.

Looks like I have to create an account. Let's do it. 

So far similar behaviour to Loveable. Thinking, coding...

<figure>
<center>
  <img src="/assets/img/24-12-11-08.png" alt="test" style="width:100%; height:auto;">
</center>
</figure>

Ok, we have a website!

<figure>
<center>
  <img src="/assets/img/24-12-11-09.png" alt="test" style="width:100%; height:auto;">
</center>
</figure>

It's definitely not as beautiful as the Loveable one, but that would need to be edited later anyway. The search doesn't seem to work, but the browse functionality is pretty cool. 

You can view the deployed website [here](https://dmf2l9kilwv8qqt7.vercel.app). Getting the code to GitHub seems like it might be possible but not immediately obvious to me how you would do that. 

# Editing the code

So I got as far as having two draft websites, both of which presumably have a code base I can edit. Now the plan is to try to edit those code bases. For that, I will get Cursor and see if AI can help with that too. 

# Cursor

<figure>
<center>
  <img src="/assets/img/24-12-11-10.png" alt="test" style="width:100%; height:auto;">
</center>
</figure>

You can log in using GitHub and then download the install files. 

That's cool, when you install it, it imports your plugins and keybindings from VS Code. 

Now that I've installed Cursor, let's clone the repo for the website that Loveable made for me. 

<figure>
<center>
  <img src="/assets/img/24-12-11-11.png" alt="test" style="width:100%; height:auto;">
</center>
</figure>

Ok, I have the code on my computer. Now what?

Maybe ChatGPT knows. 

<figure>
<center>
  <img src="/assets/img/24-12-11-12.png" alt="test" style="width:100%; height:auto;">
</center>
</figure>

ChatGPT's answer can be found in Appendix B. That might be a bit much for this session. Maybe I will try and get AI to help me make some edits to the code to improve how it looks. 

Actually, now that I think about it, even if I am able to edit it, how will I deploy it? I wonder if making changes to the code and pushing it to the repo will actually be reflected in the website deployed by Loveable. 

Actually, my other websites that I made with jekyll lets me serve the website locally. 

Maybe I should try and see if the AI assistant can help me figure out if I can serve this website locally (be able to view it in my browser). Let's try the chat feature. 

<figure>
<center>
  <img src="/assets/img/24-12-11-18.png" alt="test" style="width:100%; height:auto;">
</center>
</figure>

Ok, I won't bore you with the whole exchnage, but I tried what the AI assistant suggested and every time something didn't work, I pasted the error into the chat, and it told me what to try next. 

<figure>
<center>
  <img src="/assets/img/24-12-11-14.png" alt="test" style="height:180px; width:auto;"><img src="/assets/img/24-12-11-15.png" alt="test" style="height:180px; width:auto;"><img src="/assets/img/24-12-11-17.png" alt="test" style="height:180px; width:auto;">
</center>
</figure>

Essentially I needed to install some packages. The kind of thing that used to take a day of googling errors and reading through multiple Stack Exchange answers just took 5 minutes. I was able to serve the website locally. Neat!

<figure>
<center>
  <img src="/assets/img/24-12-11-16.png" alt="test" style="width:100%; height:auto;">
</center>
</figure>

I only have ten mins left in this co-working session, so let's see if I can get the AI to help me make a change to the website. 

Dang. Out of time. I also don't have time to write up how the conversation went, but I managed to get it to help me figure out how to make the thumbnails smaller, so that's cool!

<figure>
<center>
  <img src="/assets/img/24-12-11-19.png" alt="test" style="width:100%; height:auto;">
</center>
</figure>

So my plan for next week's session is to work on making this website much more beautiful and doing what I want it to do. 

---

# Appendix A

### Product Scope for Static Website to Showcase Educational Carousels

#### Project Overview
The objective is to create a static website to showcase educational carousels (slideshows) with essential features to enhance user experience. The website should allow users to search for carousels by topics, browse through available carousels, and offer a mobile-native experience.



### Features and Requirements

#### 1. Carousel Showcase
- **Purpose:** Display educational carousels in an engaging and visually appealing manner.
- **Requirements:**
  - A dedicated section to display featured carousels on the homepage.
  - Individual pages for each carousel, with a brief description and navigation controls for users to explore the slides.

#### 2. Search Functionality
- **Purpose:** Enable users to search for carousels based on topics.
- **Requirements:**
  - Search bar prominently displayed on the homepage and other relevant pages.
  - Search filters to refine results (e.g., by date added, topic, or popularity).
  - Instant search suggestions while typing.

#### 3. Browsing Capability
- **Purpose:** Allow users to discover carousels by exploring the library.
- **Requirements:**
  - A "Browse" page displaying carousels categorized by topics.
  - Sorting options (e.g., alphabetical, most viewed, recently added).
  - Pagination or infinite scrolling for seamless browsing.

#### 4. Mobile-Native Design
- **Purpose:** Ensure a smooth user experience on mobile devices.
- **Requirements:**
  - Fully responsive design, optimized for different screen sizes.
  - Touch-friendly carousel navigation.
  - Lightweight and fast-loading interface.

#### 5. Static Website Architecture
- **Purpose:** Maintain simplicity and speed with static content delivery.
- **Requirements:**
  - Built using a static site generator (e.g., Gatsby, Next.js, or Hugo).
  - Hosted on platforms optimized for static websites (e.g., Netlify, Vercel).
  - Minimal use of JavaScript for critical functionality.

#### 6. Additional Features (Future Considerations)
- **User Accounts:** Optional user accounts to bookmark or save favorite carousels.
- **Analytics Integration:** Track user interactions and popular carousels.
- **Theming:** Support for light and dark modes.


### Technical Specifications
- **Tech Stack:**
  - Frontend: HTML, CSS, JavaScript (if needed), and a static site generator.
  - Hosting: Netlify, Vercel, or GitHub Pages.
  - Search: Client-side search using JavaScript or a service like Algolia.

- **Design Guidelines:**
  - Clean, modern, and professional layout.
  - Typography and color scheme to ensure readability.
  - Consistent navigation across devices.



### Deliverables
1. **Design Mockups:** Wireframes and high-fidelity mockups for key pages (Homepage, Browse, Carousel Detail Page).
2. **Static Website Code:** Complete source code for the website.
3. **Documentation:** Instructions on updating content and deploying the website.



### Timeline
- **Week 1:** Gather requirements and finalize design.
- **Week 2:** Develop core features (homepage, carousel display, and search).
- **Week 3:** Implement browsing functionality and optimize for mobile.
- **Week 4:** Final testing and deployment.



### Success Metrics
- Website loads within 2 seconds on mobile.
- Users can find carousels using the search functionality within 3 clicks.
- Mobile usability score above 90% (e.g., using Google Lighthouse).

---

# Appendix B

Your friend's suggestion to "feed the scope document into Cursor" likely means using Cursor to integrate your scope document into the workflow of improving the codebase. Cursor is a tool designed to assist with coding tasks, often leveraging AI to understand and refine code. Here's how you might approach this:

### 1. **Understand the Scope Document's Role**
   - A **scope document** outlines the goals, features, functionality, and requirements of the project. It serves as a blueprint for what the website should do and how it should perform.
   - By "feeding" it into Cursor, the idea is to use the scope document to guide Cursor in aligning the codebase with your desired outcomes.

### 2. **How to Use Cursor with the Scope Document**
   Cursor can help you:
   - Understand how the existing codebase aligns with the scope document.
   - Identify areas where the codebase is incomplete or deviates from the specified requirements.
   - Refactor or add code to fulfill the scope requirements.

   Here’s how you can proceed:
   - **Open the Codebase**: Open your cloned codebase in Cursor, as you've already done.
   - **Reference the Scope Document**:
     - If Cursor supports direct input of natural language files, upload or paste the content of the scope document into the interface.
     - Alternatively, summarize the key points from the scope document and enter them as comments or tasks in Cursor.
   - **Ask Cursor for Help**:
     - Use AI prompts to clarify what needs to be implemented or improved. For example:
       - "Refactor the login functionality to meet the requirements described in this scope document."
       - "Add a feature for user registration, as detailed in the attached scope document."

### 3. **Enhance Collaboration Between Scope and Code**
   - **Map Scope to Code**: For each feature or requirement in the scope document, locate the corresponding code or note where it needs to be added.
   - **Iterative Feedback**: Ask Cursor to analyze specific sections of the codebase to ensure they match the scope document. For example:
     - "Is the navigation bar implemented as described in the scope?"
     - "Suggest improvements for SEO optimization according to these requirements."

### 4. **Output**
   Cursor can help you generate, review, or debug code that aligns better with the goals outlined in your scope document.

If you're unsure about the integration or Cursor's capabilities, you could experiment by asking Cursor directly: 
> "How can I integrate this scope document into my workflow to improve this codebase?"

