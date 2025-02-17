﻿<%@ Page Title="Event Management | SpaceBuns" Language="C#" MasterPageFile="~/Admin/sb_masterAdmin.Master" AutoEventWireup="true" CodeBehind="adminEvents.aspx.cs" Inherits="Space_Buns_Ordering_System.adminEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<%--    <script>
        const events = [
            {
                summary: 'JS Conference',
                start: {
                    date: Calendar.dayjs().format('DD/MM/YYYY'),
                },
                end: {
                    date: Calendar.dayjs().format('DD/MM/YYYY'),
                },
                color: {
                    background: '#cfe0fc',
                    foreground: '#0a47a9',
                },
            },
            {
                summary: 'Vue Meetup',
                start: {
                    date: Calendar.dayjs().add(1, 'day').format('DD/MM/YYYY'),
                },
                end: {
                    date: Calendar.dayjs().add(5, 'day').format('DD/MM/YYYY'),
                },
                color: {
                    background: '#ebcdfe',
                    foreground: '#6e02b1',
                },
            },
            {
                summary: 'Angular Meetup',
                description: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur',
                start: {
                    date: Calendar.dayjs().subtract(3, 'day').format('DD/MM/YYYY'),
                    dateTime: Calendar.dayjs().subtract(3, 'day').format('DD/MM/YYYY') + ' 10:00',
                },
                end: {
                    date: Calendar.dayjs().add(3, 'day').format('DD/MM/YYYY'),
                    dateTime: Calendar.dayjs().add(3, 'day').format('DD/MM/YYYY') + ' 14:00',
                },
                color: {
                    background: '#c7f5d9',
                    foreground: '#0b4121',
                },
            },
            {
                summary: 'React Meetup',
                start: {
                    date: Calendar.dayjs().add(5, 'day').format('DD/MM/YYYY'),
                },
                end: {
                    date: Calendar.dayjs().add(8, 'day').format('DD/MM/YYYY'),
                },
                color: {
                    background: '#fdd8de',
                    foreground: '#790619',
                },
            },
            {
                summary: 'Meeting',
                start: {
                    date: Calendar.dayjs().add(1, 'day').format('DD/MM/YYYY'),
                    dateTime: Calendar.dayjs().add(1, 'day').format('DD/MM/YYYY') + ' 8:00',
                },
                end: {
                    date: Calendar.dayjs().add(1, 'day').format('DD/MM/YYYY'),
                    dateTime: Calendar.dayjs().add(1, 'day').format('DD/MM/YYYY') + ' 12:00',
                },
                color: {
                    background: '#cfe0fc',
                    foreground: '#0a47a9',
                },
            },
            {
                summary: 'Call',
                start: {
                    date: Calendar.dayjs().add(2, 'day').format('DD/MM/YYYY'),
                    dateTime: Calendar.dayjs().add(2, 'day').format('DD/MM/YYYY') + ' 11:00',
                },
                end: {
                    date: Calendar.dayjs().add(2, 'day').format('DD/MM/YYYY'),
                    dateTime: Calendar.dayjs().add(2, 'day').format('DD/MM/YYYY') + ' 14:00',
                },
                color: {
                    background: '#292929',
                    foreground: '#f5f5f5',
                },
            }
        ];

        const calendarElement = document.getElementById('calendar');
        const calendarInstance = Calendar.getInstance(calendarElement);
        calendarInstance.addEvents(events);
    </script>
    <script>
        const events = [
            {
                summary: 'JS Conference',
                start: {
                    date: Calendar.dayjs().format('DD/MM/YYYY'),
                },
                end: {
                    date: Calendar.dayjs().format('DD/MM/YYYY'),
                },
                color: {
                    background: '#cfe0fc',
                    foreground: '#0a47a9',
                },
            },
            {
                summary: 'Vue Meetup',
                start: {
                    date: Calendar.dayjs().add(1, 'day').format('DD/MM/YYYY'),
                },
                end: {
                    date: Calendar.dayjs().add(5, 'day').format('DD/MM/YYYY'),
                },
                color: {
                    background: '#ebcdfe',
                    foreground: '#6e02b1',
                },
            },
            {
                summary: 'Angular Meetup',
                description: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur',
                start: {
                    date: Calendar.dayjs().subtract(3, 'day').format('DD/MM/YYYY'),
                    dateTime: Calendar.dayjs().subtract(3, 'day').format('DD/MM/YYYY') + ' 10:00',
                },
                end: {
                    date: Calendar.dayjs().add(3, 'day').format('DD/MM/YYYY'),
                    dateTime: Calendar.dayjs().add(3, 'day').format('DD/MM/YYYY') + ' 14:00',
                },
                color: {
                    background: '#c7f5d9',
                    foreground: '#0b4121',
                },
            },
            {
                summary: 'React Meetup',
                start: {
                    date: Calendar.dayjs().add(5, 'day').format('DD/MM/YYYY'),
                },
                end: {
                    date: Calendar.dayjs().add(8, 'day').format('DD/MM/YYYY'),
                },
                color: {
                    background: '#fdd8de',
                    foreground: '#790619',
                },
            },
            {
                summary: 'Meeting',
                start: {
                    date: Calendar.dayjs().add(1, 'day').format('DD/MM/YYYY'),
                    dateTime: Calendar.dayjs().add(1, 'day').format('DD/MM/YYYY') + ' 8:00',
                },
                end: {
                    date: Calendar.dayjs().add(1, 'day').format('DD/MM/YYYY'),
                    dateTime: Calendar.dayjs().add(1, 'day').format('DD/MM/YYYY') + ' 12:00',
                },
                color: {
                    background: '#cfe0fc',
                    foreground: '#0a47a9',
                },
            },
            {
                summary: 'Call',
                start: {
                    date: Calendar.dayjs().add(2, 'day').format('DD/MM/YYYY'),
                    dateTime: Calendar.dayjs().add(2, 'day').format('DD/MM/YYYY') + ' 11:00',
                },
                end: {
                    date: Calendar.dayjs().add(2, 'day').format('DD/MM/YYYY'),
                    dateTime: Calendar.dayjs().add(2, 'day').format('DD/MM/YYYY') + ' 14:00',
                },
                color: {
                    background: '#292929',
                    foreground: '#f5f5f5',
                },
            }
        ]);

        const calendarElement = document.getElementById('calendar-3');
        const calendarInstance = Calendar.getInstance(calendarElement);
        calendarInstance.addEvents(events);
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Events
<%--    <div class="calendar" id="calendar"></div>
    <div class="calendar" id="calendar-3" data-mdb-default-view="week"></div>--%>
</asp:Content>
