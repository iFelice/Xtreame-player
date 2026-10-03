package p015b6;

import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements HostnameVerifier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f9903a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f9904b = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    public static List a(X509Certificate x509Certificate, int i8) {
        Integer num;
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.emptyList();
            }
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && (num = (Integer) list.get(0)) != null && num.intValue() == i8 && (str = (String) list.get(1)) != null) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return Collections.emptyList();
        }
    }

    public static boolean b(String str, X509Certificate x509Certificate) {
        String str2;
        String str3;
        char[] cArr;
        char c8;
        int i8;
        char c9;
        if (f9904b.matcher(str).matches()) {
            List listA = a(x509Certificate, 7);
            int size = listA.size();
            for (int i9 = 0; i9 < size; i9++) {
                if (str.equalsIgnoreCase((String) listA.get(i9))) {
                    return true;
                }
            }
        } else {
            String lowerCase = str.toLowerCase(Locale.US);
            int i10 = 2;
            List listA2 = a(x509Certificate, 2);
            int size2 = listA2.size();
            int i11 = 0;
            boolean z7 = false;
            while (i11 < size2) {
                if (c(lowerCase, (String) listA2.get(i11))) {
                    return true;
                }
                i11++;
                z7 = true;
            }
            if (!z7) {
                c cVar = new c(x509Certificate.getSubjectX500Principal());
                cVar.f9898c = 0;
                cVar.f9899d = 0;
                cVar.f9900e = 0;
                cVar.f9901f = 0;
                String str4 = cVar.f9896a;
                cVar.f9902g = str4.toCharArray();
                String strC = cVar.c();
                if (strC == null) {
                    str3 = null;
                } else {
                    while (true) {
                        int i12 = cVar.f9898c;
                        int i13 = cVar.f9897b;
                        if (i12 == i13) {
                            break;
                        }
                        char c10 = cVar.f9902g[i12];
                        char c11 = '\\';
                        if (c10 == '\"') {
                            int i14 = i12 + 1;
                            cVar.f9898c = i14;
                            cVar.f9899d = i14;
                            cVar.f9900e = i14;
                            while (true) {
                                int i15 = cVar.f9898c;
                                if (i15 == i13) {
                                    throw new IllegalStateException("Unexpected end of DN: ".concat(str4));
                                }
                                char[] cArr2 = cVar.f9902g;
                                char c12 = cArr2[i15];
                                if (c12 == '\"') {
                                    cVar.f9898c = i15 + 1;
                                    while (true) {
                                        int i16 = cVar.f9898c;
                                        if (i16 >= i13 || cVar.f9902g[i16] != ' ') {
                                            break;
                                        }
                                        cVar.f9898c = i16 + 1;
                                    }
                                    char[] cArr3 = cVar.f9902g;
                                    int i17 = cVar.f9899d;
                                    str2 = new String(cArr3, i17, cVar.f9900e - i17);
                                    break;
                                }
                                if (c12 == '\\') {
                                    cArr2[cVar.f9900e] = cVar.b();
                                } else {
                                    cArr2[cVar.f9900e] = c12;
                                }
                                cVar.f9898c++;
                                cVar.f9900e++;
                                i10 = 2;
                            }
                        } else if (c10 == '#') {
                            if (i12 + 4 >= i13) {
                                throw new IllegalStateException("Unexpected end of DN: ".concat(str4));
                            }
                            cVar.f9899d = i12;
                            cVar.f9898c = i12 + 1;
                            while (true) {
                                int i18 = cVar.f9898c;
                                if (i18 == i13 || (c8 = (cArr = cVar.f9902g)[i18]) == '+' || c8 == ',' || c8 == ';') {
                                    cVar.f9900e = i18;
                                    break;
                                }
                                if (c8 == ' ') {
                                    cVar.f9900e = i18;
                                    cVar.f9898c = i18 + 1;
                                    while (true) {
                                        int i19 = cVar.f9898c;
                                        if (i19 >= i13 || cVar.f9902g[i19] != ' ') {
                                            break;
                                        }
                                        cVar.f9898c = i19 + 1;
                                    }
                                } else {
                                    if (c8 >= 'A' && c8 <= 'F') {
                                        cArr[i18] = (char) (c8 + ' ');
                                    }
                                    cVar.f9898c = i18 + 1;
                                }
                            }
                            int i20 = cVar.f9900e;
                            int i21 = cVar.f9899d;
                            int i22 = i20 - i21;
                            if (i22 < 5 || (i22 & 1) == 0) {
                                throw new IllegalStateException("Unexpected end of DN: ".concat(str4));
                            }
                            int i23 = i22 / 2;
                            byte[] bArr = new byte[i23];
                            int i24 = i21 + 1;
                            for (int i25 = 0; i25 < i23; i25++) {
                                bArr[i25] = (byte) cVar.a(i24);
                                i24 += i10;
                            }
                            str2 = new String(cVar.f9902g, cVar.f9899d, i22);
                        } else if (c10 == '+' || c10 == ',' || c10 == ';') {
                            str2 = HttpUrl.FRAGMENT_ENCODE_SET;
                        } else {
                            cVar.f9899d = i12;
                            cVar.f9900e = i12;
                            while (true) {
                                int i26 = cVar.f9898c;
                                if (i26 >= i13) {
                                    char[] cArr4 = cVar.f9902g;
                                    int i27 = cVar.f9899d;
                                    str2 = new String(cArr4, i27, cVar.f9900e - i27);
                                    break;
                                }
                                char[] cArr5 = cVar.f9902g;
                                char c13 = cArr5[i26];
                                if (c13 != ' ') {
                                    if (c13 != ';') {
                                        if (c13 == c11) {
                                            int i28 = cVar.f9900e;
                                            cVar.f9900e = i28 + 1;
                                            cArr5[i28] = cVar.b();
                                            cVar.f9898c++;
                                        } else if (c13 != '+' && c13 != ',') {
                                            int i29 = cVar.f9900e;
                                            cVar.f9900e = i29 + 1;
                                            cArr5[i29] = c13;
                                            cVar.f9898c = i26 + 1;
                                        }
                                        c11 = '\\';
                                    }
                                    int i30 = cVar.f9899d;
                                    str2 = new String(cArr5, i30, cVar.f9900e - i30);
                                    break;
                                }
                                int i31 = cVar.f9900e;
                                cVar.f9901f = i31;
                                cVar.f9898c = i26 + 1;
                                cVar.f9900e = i31 + 1;
                                cArr5[i31] = ' ';
                                while (true) {
                                    i8 = cVar.f9898c;
                                    if (i8 >= i13) {
                                        break;
                                    }
                                    char[] cArr6 = cVar.f9902g;
                                    if (cArr6[i8] != ' ') {
                                        break;
                                    }
                                    int i32 = cVar.f9900e;
                                    cVar.f9900e = i32 + 1;
                                    cArr6[i32] = ' ';
                                    cVar.f9898c = i8 + 1;
                                }
                                if (i8 == i13 || (c9 = cVar.f9902g[i8]) == ',' || c9 == '+' || c9 == ';') {
                                    char[] cArr7 = cVar.f9902g;
                                    int i33 = cVar.f9899d;
                                    str2 = new String(cArr7, i33, cVar.f9901f - i33);
                                    break;
                                }
                                c11 = '\\';
                            }
                        }
                        if ("cn".equalsIgnoreCase(strC)) {
                            str3 = str2;
                        } else {
                            int i34 = cVar.f9898c;
                            if (i34 >= i13) {
                                break;
                            }
                            char c14 = cVar.f9902g[i34];
                            if (c14 != ',' && c14 != ';' && c14 != '+') {
                                throw new IllegalStateException("Malformed DN: ".concat(str4));
                            }
                            cVar.f9898c = i34 + 1;
                            strC = cVar.c();
                            if (strC == null) {
                                throw new IllegalStateException("Malformed DN: ".concat(str4));
                            }
                        }
                    }
                    str3 = null;
                }
                if (str3 != null) {
                    return c(lowerCase, str3);
                }
            }
        }
        return false;
    }

    public static boolean c(String str, String str2) {
        if (str != null && str.length() != 0 && !str.startsWith(".") && !str.endsWith("..") && str2 != null && str2.length() != 0 && !str2.startsWith(".") && !str2.endsWith("..")) {
            if (!str.endsWith(".")) {
                str = str.concat(".");
            }
            if (!str2.endsWith(".")) {
                str2 = str2.concat(".");
            }
            String lowerCase = str2.toLowerCase(Locale.US);
            if (!lowerCase.contains("*")) {
                return str.equals(lowerCase);
            }
            if (!lowerCase.startsWith("*.") || lowerCase.indexOf(42, 1) != -1 || str.length() < lowerCase.length() || "*.".equals(lowerCase)) {
                return false;
            }
            String strSubstring = lowerCase.substring(1);
            if (!str.endsWith(strSubstring)) {
                return false;
            }
            int length = str.length() - strSubstring.length();
            return length <= 0 || str.lastIndexOf(46, length - 1) == -1;
        }
        return false;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        try {
            return b(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException unused) {
            return false;
        }
    }
}
