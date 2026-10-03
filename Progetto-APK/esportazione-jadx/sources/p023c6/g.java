package p023c6;

import java.util.Locale;
import okhttp3.HttpUrl;
import p000a.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f11466a = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f11467b = new String[64];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f11468c = new String[256];

    static {
        int i8 = 0;
        int i9 = 0;
        while (true) {
            String[] strArr = f11468c;
            if (i9 >= strArr.length) {
                break;
            }
            strArr[i9] = String.format("%8s", Integer.toBinaryString(i9)).replace(' ', '0');
            i9++;
        }
        String[] strArr2 = f11467b;
        strArr2[0] = HttpUrl.FRAGMENT_ENCODE_SET;
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        int i10 = iArr[0];
        strArr2[i10 | 8] = r.j(new StringBuilder(), strArr2[i10], "|PADDED");
        strArr2[4] = "END_HEADERS";
        strArr2[32] = "PRIORITY";
        strArr2[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i11 = 0; i11 < 3; i11++) {
            int i12 = iArr2[i11];
            int i13 = iArr[0];
            String[] strArr3 = f11467b;
            int i14 = i13 | i12;
            strArr3[i14] = strArr3[i13] + '|' + strArr3[i12];
            StringBuilder sb = new StringBuilder();
            sb.append(strArr3[i13]);
            sb.append('|');
            strArr3[i14 | 8] = r.j(sb, strArr3[i12], "|PADDED");
        }
        while (true) {
            String[] strArr4 = f11467b;
            if (i8 >= strArr4.length) {
                return;
            }
            if (strArr4[i8] == null) {
                strArr4[i8] = f11468c[i8];
            }
            i8++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0067  */
    public static String a(boolean z7, int i8, int i9, byte b8, byte b9) {
        String strReplace;
        String str = b8 < 10 ? f11466a[b8] : String.format("0x%02x", Byte.valueOf(b8));
        if (b9 == 0) {
            strReplace = HttpUrl.FRAGMENT_ENCODE_SET;
        } else {
            String[] strArr = f11468c;
            if (b8 == 2 || b8 == 3) {
                strReplace = strArr[b9];
            } else if (b8 == 4 || b8 == 6) {
                strReplace = b9 == 1 ? "ACK" : strArr[b9];
            } else if (b8 == 7 || b8 == 8) {
                strReplace = strArr[b9];
            } else {
                String str2 = b9 < 64 ? f11467b[b9] : strArr[b9];
                if (b8 != 5 || (b9 & 4) == 0) {
                    strReplace = (b8 != 0 || (b9 & 32) == 0) ? str2 : str2.replace("PRIORITY", "COMPRESSED");
                } else {
                    strReplace = str2.replace("HEADERS", "PUSH_PROMISE");
                }
            }
        }
        Locale locale = Locale.US;
        Object[] objArr = new Object[5];
        objArr[0] = z7 ? "<<" : ">>";
        objArr[1] = Integer.valueOf(i8);
        objArr[2] = Integer.valueOf(i9);
        objArr[3] = str;
        objArr[4] = strReplace;
        return String.format(locale, "%s 0x%08x %5d %-13s %s", objArr);
    }
}
