package com.google.gson.internal;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public class PreJava9DateFormatProvider {
    private static String getDateFormatPattern(int i8) {
        if (i8 == 0) {
            return "EEEE, MMMM d, y";
        }
        if (i8 == 1) {
            return "MMMM d, y";
        }
        if (i8 == 2) {
            return "MMM d, y";
        }
        if (i8 == 3) {
            return "M/d/yy";
        }
        throw new IllegalArgumentException(r.f("Unknown DateFormat style: ", i8));
    }

    private static String getDatePartOfDateTimePattern(int i8) {
        if (i8 == 0) {
            return "EEEE, MMMM d, yyyy";
        }
        if (i8 == 1) {
            return "MMMM d, yyyy";
        }
        if (i8 == 2) {
            return "MMM d, yyyy";
        }
        if (i8 == 3) {
            return "M/d/yy";
        }
        throw new IllegalArgumentException(r.f("Unknown DateFormat style: ", i8));
    }

    private static String getTimePartOfDateTimePattern(int i8) {
        if (i8 == 0 || i8 == 1) {
            return "h:mm:ss a z";
        }
        if (i8 == 2) {
            return "h:mm:ss a";
        }
        if (i8 == 3) {
            return "h:mm a";
        }
        throw new IllegalArgumentException(r.f("Unknown DateFormat style: ", i8));
    }

    public static DateFormat getUSDateFormat(int i8) {
        return new SimpleDateFormat(getDateFormatPattern(i8), Locale.US);
    }

    public static DateFormat getUSDateTimeFormat(int i8, int i9) {
        return new SimpleDateFormat(getDatePartOfDateTimePattern(i8) + " " + getTimePartOfDateTimePattern(i9), Locale.US);
    }
}
