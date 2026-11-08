package com.google.ads.interactivemedia.v3.internal;

import com.google.protobuf.U2;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import okhttp3.HttpUrl;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class zzabi {
    private static final TimeZone zza = TimeZone.getTimeZone("UTC");

    /* JADX WARN: Code duplicated, block: B:100:0x0200  */
    /* JADX WARN: Code duplicated, block: B:94:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:95:0x01ee  */
    public static Date zza(String str, ParsePosition parsePosition) throws ParseException {
        String strG;
        String message;
        int i8;
        int i9;
        int iZzb;
        int iZzb2;
        int length;
        TimeZone timeZone;
        char cCharAt;
        int length2;
        try {
            int index = parsePosition.getIndex();
            int i10 = index + 4;
            int iZzb3 = zzb(str, index, i10);
            if (zzc(str, i10, '-')) {
                i10 = index + 5;
            }
            int i11 = i10 + 2;
            int iZzb4 = zzb(str, i10, i11);
            if (zzc(str, i11, '-')) {
                i11 = i10 + 3;
            }
            int i12 = i11 + 2;
            int iZzb5 = zzb(str, i11, i12);
            boolean zZzc = zzc(str, i12, 'T');
            if (!zZzc && str.length() <= i12) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(iZzb3, iZzb4 - 1, iZzb5);
                gregorianCalendar.setLenient(false);
                parsePosition.setIndex(i12);
                return gregorianCalendar.getTime();
            }
            if (zZzc) {
                int i13 = i11 + 5;
                int iZzb6 = zzb(str, i11 + 3, i13);
                if (zzc(str, i13, ':')) {
                    i13 = i11 + 6;
                }
                int i14 = i13 + 2;
                int iZzb7 = zzb(str, i13, i14);
                if (zzc(str, i14, ':')) {
                    i14 = i13 + 3;
                }
                if (str.length() <= i14 || (cCharAt = str.charAt(i14)) == 'Z' || cCharAt == '+' || cCharAt == '-') {
                    i9 = iZzb7;
                    iZzb = 0;
                    iZzb2 = 0;
                    i12 = i14;
                    i8 = iZzb6;
                } else {
                    int i15 = i14 + 2;
                    iZzb2 = zzb(str, i14, i15);
                    if (iZzb2 > 59 && iZzb2 < 63) {
                        iZzb2 = 59;
                    }
                    if (zzc(str, i15, '.')) {
                        int i16 = i14 + 3;
                        int i17 = i14 + 4;
                        while (true) {
                            if (i17 >= str.length()) {
                                length2 = str.length();
                                break;
                            }
                            char cCharAt2 = str.charAt(i17);
                            if (cCharAt2 >= '0' && cCharAt2 <= '9') {
                                i17++;
                            }
                            length2 = i17;
                            break;
                        }
                        int iMin = Math.min(length2, i14 + 6);
                        iZzb = zzb(str, i16, iMin);
                        int i18 = iMin - i16;
                        if (i18 == 1) {
                            iZzb *= 100;
                        } else if (i18 == 2) {
                            iZzb *= 10;
                        }
                        i8 = iZzb6;
                        i12 = length2;
                        i9 = iZzb7;
                    } else {
                        i8 = iZzb6;
                        i12 = i15;
                        i9 = iZzb7;
                        iZzb = 0;
                    }
                }
            } else {
                i8 = 0;
                i9 = 0;
                iZzb = 0;
                iZzb2 = 0;
            }
            if (str.length() <= i12) {
                throw new IllegalArgumentException("No time zone indicator");
            }
            char cCharAt3 = str.charAt(i12);
            if (cCharAt3 == 'Z') {
                timeZone = zza;
                length = i12 + 1;
            } else {
                if (cCharAt3 != '+' && cCharAt3 != '-') {
                    throw new IndexOutOfBoundsException("Invalid time zone indicator '" + cCharAt3 + "'");
                }
                String strSubstring = str.substring(i12);
                if (strSubstring.length() < 5) {
                    strSubstring = strSubstring + "00";
                }
                length = i12 + strSubstring.length();
                if (strSubstring.equals("+0000") || strSubstring.equals("+00:00")) {
                    timeZone = zza;
                } else {
                    String str2 = "GMT" + strSubstring;
                    TimeZone timeZone2 = TimeZone.getTimeZone(str2);
                    String id = timeZone2.getID();
                    if (!id.equals(str2) && !id.replace(":", HttpUrl.FRAGMENT_ENCODE_SET).equals(str2)) {
                        throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + str2 + " given, resolves to " + timeZone2.getID());
                    }
                    timeZone = timeZone2;
                }
            }
            GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone);
            gregorianCalendar2.setLenient(false);
            gregorianCalendar2.set(1, iZzb3);
            gregorianCalendar2.set(2, iZzb4 - 1);
            gregorianCalendar2.set(5, iZzb5);
            gregorianCalendar2.set(11, i8);
            gregorianCalendar2.set(12, i9);
            gregorianCalendar2.set(13, iZzb2);
            gregorianCalendar2.set(14, iZzb);
            parsePosition.setIndex(length);
            return gregorianCalendar2.getTime();
        } catch (IllegalArgumentException e8) {
            e = e8;
            if (str == null) {
                strG = null;
            } else {
                strG = r.g("\"", str, "\"");
            }
            message = e.getMessage();
            if (message != null || message.isEmpty()) {
                message = r.g("(", e.getClass().getName(), ")");
            }
            ParseException parseException = new ParseException(U2.m("Failed to parse date [", strG, "]: ", message), parsePosition.getIndex());
            parseException.initCause(e);
            throw parseException;
        } catch (IndexOutOfBoundsException e9) {
            e = e9;
            if (str == null) {
                strG = null;
            } else {
                strG = r.g("\"", str, "\"");
            }
            message = e.getMessage();
            if (message != null) {
                message = r.g("(", e.getClass().getName(), ")");
            } else {
                message = r.g("(", e.getClass().getName(), ")");
            }
            ParseException parseException2 = new ParseException(U2.m("Failed to parse date [", strG, "]: ", message), parsePosition.getIndex());
            parseException2.initCause(e);
            throw parseException2;
        }
    }

    private static int zzb(String str, int i8, int i9) {
        int i10;
        int i11;
        if (i8 < 0 || i9 > str.length() || i8 > i9) {
            throw new NumberFormatException(str);
        }
        if (i8 < i9) {
            i11 = i8 + 1;
            int iDigit = Character.digit(str.charAt(i8), 10);
            if (iDigit < 0) {
                throw new NumberFormatException("Invalid number: ".concat(String.valueOf(str.substring(i8, i9))));
            }
            i10 = -iDigit;
        } else {
            i10 = 0;
            i11 = i8;
        }
        while (i11 < i9) {
            int i12 = i11 + 1;
            int iDigit2 = Character.digit(str.charAt(i11), 10);
            if (iDigit2 < 0) {
                throw new NumberFormatException("Invalid number: ".concat(String.valueOf(str.substring(i8, i9))));
            }
            i10 = (i10 * 10) - iDigit2;
            i11 = i12;
        }
        return -i10;
    }

    private static boolean zzc(String str, int i8, char c8) {
        return i8 < str.length() && str.charAt(i8) == c8;
    }
}
