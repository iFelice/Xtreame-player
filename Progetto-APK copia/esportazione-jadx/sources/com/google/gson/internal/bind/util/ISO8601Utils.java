package com.google.gson.internal.bind.util;

import com.google.protobuf.U2;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public class ISO8601Utils {
    private static final String UTC_ID = "UTC";
    private static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone(UTC_ID);

    private static boolean checkOffset(String str, int i8, char c8) {
        return i8 < str.length() && str.charAt(i8) == c8;
    }

    public static String format(Date date) {
        return format(date, false, TIMEZONE_UTC);
    }

    private static int indexOfNonDigit(String str, int i8) {
        while (i8 < str.length()) {
            char cCharAt = str.charAt(i8);
            if (cCharAt < '0' || cCharAt > '9') {
                return i8;
            }
            i8++;
        }
        return str.length();
    }

    private static void padInt(StringBuilder sb, int i8, int i9) {
        String string = Integer.toString(i8);
        for (int length = i9 - string.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(string);
    }

    /* JADX WARN: Code duplicated, block: B:88:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:89:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:92:0x01da  */
    /* JADX WARN: Code duplicated, block: B:94:0x01e0  */
    /* JADX WARN: Instruction removed from duplicated block: B:89:0x01c1, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:94:0x01e0, please report this as an issue */
    public static Date parse(String str, ParsePosition parsePosition) throws ParseException {
        String str2;
        String message;
        int i8;
        int i9;
        int i10;
        int i11;
        int length;
        TimeZone timeZone;
        char cCharAt;
        try {
            int index = parsePosition.getIndex();
            int i12 = index + 4;
            int i13 = parseInt(str, index, i12);
            if (checkOffset(str, i12, '-')) {
                i12 = index + 5;
            }
            int i14 = i12 + 2;
            int i15 = parseInt(str, i12, i14);
            if (checkOffset(str, i14, '-')) {
                i14 = i12 + 3;
            }
            int i16 = i14 + 2;
            int i17 = parseInt(str, i14, i16);
            boolean zCheckOffset = checkOffset(str, i16, 'T');
            if (!zCheckOffset && str.length() <= i16) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(i13, i15 - 1, i17);
                gregorianCalendar.setLenient(false);
                parsePosition.setIndex(i16);
                return gregorianCalendar.getTime();
            }
            if (zCheckOffset) {
                int i18 = i14 + 5;
                int i19 = parseInt(str, i14 + 3, i18);
                if (checkOffset(str, i18, ':')) {
                    i18 = i14 + 6;
                }
                int i20 = i18 + 2;
                int i21 = parseInt(str, i18, i20);
                if (checkOffset(str, i20, ':')) {
                    i20 = i18 + 3;
                }
                if (str.length() <= i20 || (cCharAt = str.charAt(i20)) == 'Z' || cCharAt == '+' || cCharAt == '-') {
                    i9 = i21;
                    i10 = 0;
                    i11 = 0;
                    i16 = i20;
                    i8 = i19;
                } else {
                    int i22 = i20 + 2;
                    i11 = parseInt(str, i20, i22);
                    if (i11 > 59 && i11 < 63) {
                        i11 = 59;
                    }
                    if (checkOffset(str, i22, '.')) {
                        int i23 = i20 + 3;
                        int iIndexOfNonDigit = indexOfNonDigit(str, i20 + 4);
                        int iMin = Math.min(iIndexOfNonDigit, i20 + 6);
                        int i24 = parseInt(str, i23, iMin);
                        int i25 = iMin - i23;
                        if (i25 == 1) {
                            i24 *= 100;
                        } else if (i25 == 2) {
                            i24 *= 10;
                        }
                        i8 = i19;
                        i16 = iIndexOfNonDigit;
                        i9 = i21;
                        i10 = i24;
                    } else {
                        i8 = i19;
                        i16 = i22;
                        i9 = i21;
                        i10 = 0;
                    }
                }
            } else {
                i8 = 0;
                i9 = 0;
                i10 = 0;
                i11 = 0;
            }
            if (str.length() <= i16) {
                throw new IllegalArgumentException("No time zone indicator");
            }
            char cCharAt2 = str.charAt(i16);
            if (cCharAt2 == 'Z') {
                timeZone = TIMEZONE_UTC;
                length = i16 + 1;
            } else {
                if (cCharAt2 != '+' && cCharAt2 != '-') {
                    throw new IndexOutOfBoundsException("Invalid time zone indicator '" + cCharAt2 + "'");
                }
                String strSubstring = str.substring(i16);
                if (strSubstring.length() < 5) {
                    strSubstring = strSubstring.concat("00");
                }
                length = i16 + strSubstring.length();
                if ("+0000".equals(strSubstring) || "+00:00".equals(strSubstring)) {
                    timeZone = TIMEZONE_UTC;
                } else {
                    String strConcat = "GMT".concat(strSubstring);
                    TimeZone timeZone2 = TimeZone.getTimeZone(strConcat);
                    String id = timeZone2.getID();
                    if (!id.equals(strConcat) && !id.replace(":", HttpUrl.FRAGMENT_ENCODE_SET).equals(strConcat)) {
                        throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + strConcat + " given, resolves to " + timeZone2.getID());
                    }
                    timeZone = timeZone2;
                }
            }
            GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone);
            gregorianCalendar2.setLenient(false);
            gregorianCalendar2.set(1, i13);
            gregorianCalendar2.set(2, i15 - 1);
            gregorianCalendar2.set(5, i17);
            gregorianCalendar2.set(11, i8);
            gregorianCalendar2.set(12, i9);
            gregorianCalendar2.set(13, i11);
            gregorianCalendar2.set(14, i10);
            parsePosition.setIndex(length);
            return gregorianCalendar2.getTime();
        } catch (IllegalArgumentException e8) {
            e = e8;
            if (str == null) {
                str2 = null;
            } else {
                str2 = "\"" + str + '\"';
            }
            message = e.getMessage();
            if (message != null || message.isEmpty()) {
                message = "(" + e.getClass().getName() + ")";
            }
            ParseException parseException = new ParseException(U2.m("Failed to parse date [", str2, "]: ", message), parsePosition.getIndex());
            parseException.initCause(e);
            throw parseException;
        } catch (IndexOutOfBoundsException e9) {
            e = e9;
            if (str == null) {
                str2 = null;
            } else {
                str2 = "\"" + str + '\"';
            }
            message = e.getMessage();
            if (message != null) {
                message = "(" + e.getClass().getName() + ")";
            } else {
                message = "(" + e.getClass().getName() + ")";
            }
            ParseException parseException2 = new ParseException(U2.m("Failed to parse date [", str2, "]: ", message), parsePosition.getIndex());
            parseException2.initCause(e);
            throw parseException2;
        } catch (NumberFormatException e10) {
            e = e10;
            if (str == null) {
                str2 = null;
            } else {
                str2 = "\"" + str + '\"';
            }
            message = e.getMessage();
            if (message != null) {
                message = "(" + e.getClass().getName() + ")";
            } else {
                message = "(" + e.getClass().getName() + ")";
            }
            ParseException parseException3 = new ParseException(U2.m("Failed to parse date [", str2, "]: ", message), parsePosition.getIndex());
            parseException3.initCause(e);
            throw parseException3;
        }
    }

    private static int parseInt(String str, int i8, int i9) {
        int i10;
        int i11;
        if (i8 < 0 || i9 > str.length() || i8 > i9) {
            throw new NumberFormatException(str);
        }
        if (i8 < i9) {
            i11 = i8 + 1;
            int iDigit = Character.digit(str.charAt(i8), 10);
            if (iDigit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i8, i9));
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
                throw new NumberFormatException("Invalid number: " + str.substring(i8, i9));
            }
            i10 = (i10 * 10) - iDigit2;
            i11 = i12;
        }
        return -i10;
    }

    public static String format(Date date, boolean z7) {
        return format(date, z7, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean z7, TimeZone timeZone) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, Locale.US);
        gregorianCalendar.setTime(date);
        StringBuilder sb = new StringBuilder(19 + (z7 ? 4 : 0) + (timeZone.getRawOffset() == 0 ? 1 : 6));
        padInt(sb, gregorianCalendar.get(1), 4);
        sb.append('-');
        padInt(sb, gregorianCalendar.get(2) + 1, 2);
        sb.append('-');
        padInt(sb, gregorianCalendar.get(5), 2);
        sb.append('T');
        padInt(sb, gregorianCalendar.get(11), 2);
        sb.append(':');
        padInt(sb, gregorianCalendar.get(12), 2);
        sb.append(':');
        padInt(sb, gregorianCalendar.get(13), 2);
        if (z7) {
            sb.append('.');
            padInt(sb, gregorianCalendar.get(14), 3);
        }
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int i8 = offset / 60000;
            int iAbs = Math.abs(i8 / 60);
            int iAbs2 = Math.abs(i8 % 60);
            sb.append(offset >= 0 ? '+' : '-');
            padInt(sb, iAbs, 2);
            sb.append(':');
            padInt(sb, iAbs2, 2);
        } else {
            sb.append('Z');
        }
        return sb.toString();
    }
}
