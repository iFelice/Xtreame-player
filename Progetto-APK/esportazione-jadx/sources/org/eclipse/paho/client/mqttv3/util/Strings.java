package org.eclipse.paho.client.mqttv3.util;

/* JADX INFO: loaded from: classes2.dex */
public final class Strings {
    private static final int INDEX_NOT_FOUND = -1;

    private Strings() {
    }

    public static boolean containsAny(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence2 == null) {
            return false;
        }
        return containsAny(charSequence, toCharArray(charSequence2));
    }

    public static int countMatches(CharSequence charSequence, CharSequence charSequence2) {
        int length = 0;
        if (isEmpty(charSequence) || isEmpty(charSequence2)) {
            return 0;
        }
        int i8 = 0;
        while (true) {
            int iIndexOf = indexOf(charSequence, charSequence2, length);
            if (iIndexOf == -1) {
                return i8;
            }
            i8++;
            length = iIndexOf + charSequence2.length();
        }
    }

    public static boolean equalsAny(CharSequence charSequence, CharSequence[] charSequenceArr) {
        boolean z7 = charSequence == null && charSequenceArr == null;
        if (charSequenceArr != null) {
            for (CharSequence charSequence2 : charSequenceArr) {
                z7 = z7 || charSequence2.equals(charSequence);
            }
        }
        return z7;
    }

    private static int indexOf(CharSequence charSequence, CharSequence charSequence2, int i8) {
        return charSequence.toString().indexOf(charSequence2.toString(), i8);
    }

    public static boolean isEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    private static char[] toCharArray(CharSequence charSequence) {
        if (charSequence instanceof String) {
            return ((String) charSequence).toCharArray();
        }
        int length = charSequence.length();
        char[] cArr = new char[charSequence.length()];
        for (int i8 = 0; i8 < length; i8++) {
            cArr[i8] = charSequence.charAt(i8);
        }
        return cArr;
    }

    public static boolean containsAny(CharSequence charSequence, char[] cArr) {
        if (isEmpty(charSequence) || isEmpty(cArr)) {
            return false;
        }
        int length = charSequence.length();
        int length2 = cArr.length;
        int i8 = length - 1;
        int i9 = length2 - 1;
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = charSequence.charAt(i10);
            for (int i11 = 0; i11 < length2; i11++) {
                if (cArr[i11] == cCharAt) {
                    if (!Character.isHighSurrogate(cCharAt) || i11 == i9) {
                        return true;
                    }
                    if (i10 < i8 && cArr[i11 + 1] == charSequence.charAt(i10 + 1)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private static boolean isEmpty(char[] cArr) {
        return cArr == null || cArr.length == 0;
    }
}
