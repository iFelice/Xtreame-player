package okhttp3.internal.tls;

import I6.k;
import com.google.protobuf.U2;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import p000a.r;
import p162u6.o;
import p162u6.q;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class OkHostnameVerifier implements HostnameVerifier {
    private static final int ALT_DNS_NAME = 2;
    private static final int ALT_IPA_NAME = 7;
    public static final OkHostnameVerifier INSTANCE = new OkHostnameVerifier();

    private OkHostnameVerifier() {
    }

    private final String asciiToLowercase(String str) {
        if (!isAscii(str)) {
            return str;
        }
        Locale locale = Locale.US;
        q0.g(locale, "US");
        String lowerCase = str.toLowerCase(locale);
        q0.g(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }

    private final List<String> getSubjectAltNames(X509Certificate x509Certificate, int i8) {
        Object obj;
        q qVar = q.f30542G;
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return qVar;
            }
            ArrayList arrayList = new ArrayList();
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && q0.c(list.get(0), Integer.valueOf(i8)) && (obj = list.get(1)) != null) {
                    arrayList.add((String) obj);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return qVar;
        }
    }

    private final boolean isAscii(String str) {
        int i8;
        int length = str.length();
        int length2 = str.length();
        if (length2 < 0) {
            throw new IllegalArgumentException(U2.j("endIndex < beginIndex: ", length2, " < ", 0).toString());
        }
        if (length2 > str.length()) {
            StringBuilder sbK = r.k("endIndex > string.length: ", length2, " > ");
            sbK.append(str.length());
            throw new IllegalArgumentException(sbK.toString().toString());
        }
        long j8 = 0;
        int i9 = 0;
        while (i9 < length2) {
            char cCharAt = str.charAt(i9);
            if (cCharAt < 128) {
                j8++;
            } else {
                if (cCharAt < 2048) {
                    i8 = 2;
                } else if (cCharAt < 55296 || cCharAt > 57343) {
                    i8 = 3;
                } else {
                    int i10 = i9 + 1;
                    char cCharAt2 = i10 < length2 ? str.charAt(i10) : (char) 0;
                    if (cCharAt > 56319 || cCharAt2 < 56320 || cCharAt2 > 57343) {
                        j8++;
                        i9 = i10;
                    } else {
                        j8 += (long) 4;
                        i9 += 2;
                    }
                }
                j8 += (long) i8;
            }
            i9++;
        }
        return length == ((int) j8);
    }

    private final boolean verifyHostname(String str, X509Certificate x509Certificate) {
        String strAsciiToLowercase = asciiToLowercase(str);
        List<String> subjectAltNames = getSubjectAltNames(x509Certificate, 2);
        if ((subjectAltNames instanceof Collection) && subjectAltNames.isEmpty()) {
            return false;
        }
        Iterator<T> it = subjectAltNames.iterator();
        while (it.hasNext()) {
            if (INSTANCE.verifyHostname(strAsciiToLowercase, (String) it.next())) {
                return true;
            }
        }
        return false;
    }

    private final boolean verifyIpAddress(String str, X509Certificate x509Certificate) {
        String canonicalHost = HostnamesKt.toCanonicalHost(str);
        List<String> subjectAltNames = getSubjectAltNames(x509Certificate, 7);
        if ((subjectAltNames instanceof Collection) && subjectAltNames.isEmpty()) {
            return false;
        }
        Iterator<T> it = subjectAltNames.iterator();
        while (it.hasNext()) {
            if (q0.c(canonicalHost, HostnamesKt.toCanonicalHost((String) it.next()))) {
                return true;
            }
        }
        return false;
    }

    public final List<String> allSubjectAltNames(X509Certificate x509Certificate) {
        q0.h(x509Certificate, "certificate");
        return o.A(getSubjectAltNames(x509Certificate, 2), getSubjectAltNames(x509Certificate, 7));
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        q0.h(str, "host");
        q0.h(sSLSession, "session");
        if (!isAscii(str)) {
            return false;
        }
        try {
            Certificate certificate = sSLSession.getPeerCertificates()[0];
            q0.f(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
            return verify(str, (X509Certificate) certificate);
        } catch (SSLException unused) {
            return false;
        }
    }

    public final boolean verify(String str, X509Certificate x509Certificate) {
        q0.h(str, "host");
        q0.h(x509Certificate, "certificate");
        return Util.canParseAsIpAddress(str) ? verifyIpAddress(str, x509Certificate) : verifyHostname(str, x509Certificate);
    }

    private final boolean verifyHostname(String str, String str2) {
        if (str != null && str.length() != 0 && !k.U0(str, ".", false) && !k.E0(str, "..") && str2 != null && str2.length() != 0 && !k.U0(str2, ".", false) && !k.E0(str2, "..")) {
            if (!k.E0(str, ".")) {
                str = str.concat(".");
            }
            if (!k.E0(str2, ".")) {
                str2 = str2.concat(".");
            }
            String strAsciiToLowercase = asciiToLowercase(str2);
            if (!k.D0(strAsciiToLowercase, "*")) {
                return q0.c(str, strAsciiToLowercase);
            }
            if (!k.U0(strAsciiToLowercase, "*.", false) || k.I0(strAsciiToLowercase, '*', 1, false, 4) != -1 || str.length() < strAsciiToLowercase.length() || q0.c("*.", strAsciiToLowercase)) {
                return false;
            }
            String strSubstring = strAsciiToLowercase.substring(1);
            q0.g(strSubstring, "this as java.lang.String).substring(startIndex)");
            if (!k.E0(str, strSubstring)) {
                return false;
            }
            int length = str.length() - strSubstring.length();
            return length <= 0 || k.M0(str, '.', length - 1, 4) == -1;
        }
        return false;
    }
}
