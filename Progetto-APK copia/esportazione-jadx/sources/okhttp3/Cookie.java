package okhttp3;

import D6.e;
import I6.k;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import p162u6.q;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class Cookie {
    private final String domain;
    private final long expiresAt;
    private final boolean hostOnly;
    private final boolean httpOnly;
    private final String name;
    private final String path;
    private final boolean persistent;
    private final boolean secure;
    private final String value;
    public static final Companion Companion = new Companion(null);
    private static final Pattern YEAR_PATTERN = Pattern.compile("(\\d{2,4})[^\\d]*");
    private static final Pattern MONTH_PATTERN = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    private static final Pattern DAY_OF_MONTH_PATTERN = Pattern.compile("(\\d{1,2})[^\\d]*");
    private static final Pattern TIME_PATTERN = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    public static final class Builder {
        private String domain;
        private boolean hostOnly;
        private boolean httpOnly;
        private String name;
        private boolean persistent;
        private boolean secure;
        private String value;
        private long expiresAt = DatesKt.MAX_DATE;
        private String path = MqttTopic.TOPIC_LEVEL_SEPARATOR;

        public final Cookie build() {
            String str = this.name;
            if (str == null) {
                throw new NullPointerException("builder.name == null");
            }
            String str2 = this.value;
            if (str2 == null) {
                throw new NullPointerException("builder.value == null");
            }
            long j8 = this.expiresAt;
            String str3 = this.domain;
            if (str3 != null) {
                return new Cookie(str, str2, j8, str3, this.path, this.secure, this.httpOnly, this.persistent, this.hostOnly, null);
            }
            throw new NullPointerException("builder.domain == null");
        }

        public final Builder domain(String str) {
            q0.h(str, "domain");
            return domain(str, false);
        }

        public final Builder expiresAt(long j8) {
            if (j8 <= 0) {
                j8 = Long.MIN_VALUE;
            }
            if (j8 > DatesKt.MAX_DATE) {
                j8 = 253402300799999L;
            }
            this.expiresAt = j8;
            this.persistent = true;
            return this;
        }

        public final Builder hostOnlyDomain(String str) {
            q0.h(str, "domain");
            return domain(str, true);
        }

        public final Builder httpOnly() {
            this.httpOnly = true;
            return this;
        }

        public final Builder name(String str) {
            q0.h(str, "name");
            if (!q0.c(k.X0(str).toString(), str)) {
                throw new IllegalArgumentException("name is not trimmed".toString());
            }
            this.name = str;
            return this;
        }

        public final Builder path(String str) {
            q0.h(str, "path");
            if (!k.U0(str, MqttTopic.TOPIC_LEVEL_SEPARATOR, false)) {
                throw new IllegalArgumentException("path must start with '/'".toString());
            }
            this.path = str;
            return this;
        }

        public final Builder secure() {
            this.secure = true;
            return this;
        }

        public final Builder value(String str) {
            q0.h(str, "value");
            if (!q0.c(k.X0(str).toString(), str)) {
                throw new IllegalArgumentException("value is not trimmed".toString());
            }
            this.value = str;
            return this;
        }

        private final Builder domain(String str, boolean z7) {
            String canonicalHost = HostnamesKt.toCanonicalHost(str);
            if (canonicalHost == null) {
                throw new IllegalArgumentException(p148t.a.c("unexpected domain: ", str));
            }
            this.domain = canonicalHost;
            this.hostOnly = z7;
            return this;
        }
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }

        private final int dateCharacterOffset(String str, int i8, int i9, boolean z7) {
            while (i8 < i9) {
                char cCharAt = str.charAt(i8);
                if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || ('0' <= cCharAt && cCharAt < ':') || (('a' <= cCharAt && cCharAt < '{') || (('A' <= cCharAt && cCharAt < '[') || cCharAt == ':'))) == (!z7)) {
                    return i8;
                }
                i8++;
            }
            return i9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean domainMatch(String str, String str2) {
            if (q0.c(str, str2)) {
                return true;
            }
            return k.E0(str, str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !Util.canParseAsIpAddress(str);
        }

        private final String parseDomain(String str) {
            if (!(!k.E0(str, "."))) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            String canonicalHost = HostnamesKt.toCanonicalHost(k.P0(str, "."));
            if (canonicalHost != null) {
                return canonicalHost;
            }
            throw new IllegalArgumentException();
        }

        private final long parseExpires(String str, int i8, int i9) {
            int iDateCharacterOffset = dateCharacterOffset(str, i8, i9, false);
            Matcher matcher = Cookie.TIME_PATTERN.matcher(str);
            int i10 = -1;
            int i11 = -1;
            int i12 = -1;
            int iJ0 = -1;
            int i13 = -1;
            int i14 = -1;
            while (iDateCharacterOffset < i9) {
                int iDateCharacterOffset2 = dateCharacterOffset(str, iDateCharacterOffset + 1, i9, true);
                matcher.region(iDateCharacterOffset, iDateCharacterOffset2);
                if (i11 == -1 && matcher.usePattern(Cookie.TIME_PATTERN).matches()) {
                    String strGroup = matcher.group(1);
                    q0.g(strGroup, "matcher.group(1)");
                    i11 = Integer.parseInt(strGroup);
                    String strGroup2 = matcher.group(2);
                    q0.g(strGroup2, "matcher.group(2)");
                    i13 = Integer.parseInt(strGroup2);
                    String strGroup3 = matcher.group(3);
                    q0.g(strGroup3, "matcher.group(3)");
                    i14 = Integer.parseInt(strGroup3);
                } else if (i12 == -1 && matcher.usePattern(Cookie.DAY_OF_MONTH_PATTERN).matches()) {
                    String strGroup4 = matcher.group(1);
                    q0.g(strGroup4, "matcher.group(1)");
                    i12 = Integer.parseInt(strGroup4);
                } else if (iJ0 == -1 && matcher.usePattern(Cookie.MONTH_PATTERN).matches()) {
                    String strGroup5 = matcher.group(1);
                    q0.g(strGroup5, "matcher.group(1)");
                    Locale locale = Locale.US;
                    q0.g(locale, "US");
                    String lowerCase = strGroup5.toLowerCase(locale);
                    q0.g(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                    String strPattern = Cookie.MONTH_PATTERN.pattern();
                    q0.g(strPattern, "MONTH_PATTERN.pattern()");
                    iJ0 = k.J0(strPattern, lowerCase, 0, false, 6) / 4;
                } else if (i10 == -1 && matcher.usePattern(Cookie.YEAR_PATTERN).matches()) {
                    String strGroup6 = matcher.group(1);
                    q0.g(strGroup6, "matcher.group(1)");
                    i10 = Integer.parseInt(strGroup6);
                }
                iDateCharacterOffset = dateCharacterOffset(str, iDateCharacterOffset2 + 1, i9, false);
            }
            if (70 <= i10 && i10 < 100) {
                i10 += 1900;
            }
            if (i10 >= 0 && i10 < 70) {
                i10 += 2000;
            }
            if (i10 < 1601) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (iJ0 == -1) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (1 > i12 || i12 >= 32) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (i11 < 0 || i11 >= 24) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (i13 < 0 || i13 >= 60) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (i14 < 0 || i14 >= 60) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(Util.UTC);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i10);
            gregorianCalendar.set(2, iJ0 - 1);
            gregorianCalendar.set(5, i12);
            gregorianCalendar.set(11, i11);
            gregorianCalendar.set(12, i13);
            gregorianCalendar.set(13, i14);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }

        private final long parseMaxAge(String str) {
            try {
                long j8 = Long.parseLong(str);
                if (j8 <= 0) {
                    return Long.MIN_VALUE;
                }
                return j8;
            } catch (NumberFormatException e8) {
                Pattern patternCompile = Pattern.compile("-?\\d+");
                q0.g(patternCompile, "compile(...)");
                q0.h(str, "input");
                if (patternCompile.matcher(str).matches()) {
                    return k.U0(str, "-", false) ? Long.MIN_VALUE : Long.MAX_VALUE;
                }
                throw e8;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean pathMatch(HttpUrl httpUrl, String str) {
            String strEncodedPath = httpUrl.encodedPath();
            if (q0.c(strEncodedPath, str)) {
                return true;
            }
            return k.U0(strEncodedPath, str, false) && (k.E0(str, MqttTopic.TOPIC_LEVEL_SEPARATOR) || strEncodedPath.charAt(str.length()) == '/');
        }

        public final Cookie parse(HttpUrl httpUrl, String str) {
            q0.h(httpUrl, "url");
            q0.h(str, "setCookie");
            return parse$okhttp(System.currentTimeMillis(), httpUrl, str);
        }

        /* JADX WARN: Code duplicated, block: B:43:0x00d5 A[PHI: r1
          0x00d5: PHI (r1v22 long) = (r1v7 long), (r1v10 long) binds: [B:42:0x00d3, B:53:0x00fc] A[DONT_GENERATE, DONT_INLINE]] */
        public final Cookie parse$okhttp(long j8, HttpUrl httpUrl, String str) {
            long j9;
            long j10;
            Cookie cookie;
            String str2;
            String str3;
            q0.h(httpUrl, "url");
            q0.h(str, "setCookie");
            int iDelimiterOffset$default = Util.delimiterOffset$default(str, ';', 0, 0, 6, (Object) null);
            int iDelimiterOffset$default2 = Util.delimiterOffset$default(str, '=', 0, iDelimiterOffset$default, 2, (Object) null);
            if (iDelimiterOffset$default2 == iDelimiterOffset$default) {
                return null;
            }
            String strTrimSubstring$default = Util.trimSubstring$default(str, 0, iDelimiterOffset$default2, 1, null);
            if (strTrimSubstring$default.length() == 0 || Util.indexOfControlOrNonAscii(strTrimSubstring$default) != -1) {
                return null;
            }
            String strTrimSubstring = Util.trimSubstring(str, iDelimiterOffset$default2 + 1, iDelimiterOffset$default);
            if (Util.indexOfControlOrNonAscii(strTrimSubstring) != -1) {
                return null;
            }
            int i8 = iDelimiterOffset$default + 1;
            int length = str.length();
            String str4 = null;
            String domain = null;
            long maxAge = -1;
            boolean z7 = false;
            boolean z8 = false;
            boolean z9 = false;
            boolean z10 = true;
            long expires = DatesKt.MAX_DATE;
            while (i8 < length) {
                int iDelimiterOffset = Util.delimiterOffset(str, ';', i8, length);
                int iDelimiterOffset2 = Util.delimiterOffset(str, '=', i8, iDelimiterOffset);
                String strTrimSubstring2 = Util.trimSubstring(str, i8, iDelimiterOffset2);
                String strTrimSubstring3 = iDelimiterOffset2 < iDelimiterOffset ? Util.trimSubstring(str, iDelimiterOffset2 + 1, iDelimiterOffset) : HttpUrl.FRAGMENT_ENCODE_SET;
                if (k.F0(strTrimSubstring2, "expires")) {
                    try {
                        expires = parseExpires(strTrimSubstring3, 0, strTrimSubstring3.length());
                        z9 = true;
                    } catch (NumberFormatException | IllegalArgumentException unused) {
                    }
                } else if (k.F0(strTrimSubstring2, "max-age")) {
                    maxAge = parseMaxAge(strTrimSubstring3);
                    z9 = true;
                } else if (k.F0(strTrimSubstring2, "domain")) {
                    domain = parseDomain(strTrimSubstring3);
                    z10 = false;
                } else if (k.F0(strTrimSubstring2, "path")) {
                    str4 = strTrimSubstring3;
                } else if (k.F0(strTrimSubstring2, "secure")) {
                    z7 = true;
                } else if (k.F0(strTrimSubstring2, "httponly")) {
                    z8 = true;
                }
                i8 = iDelimiterOffset + 1;
            }
            long j11 = Long.MIN_VALUE;
            if (maxAge == Long.MIN_VALUE) {
                j9 = j11;
            } else if (maxAge != -1) {
                j11 = j8 + (maxAge <= 9223372036854775L ? maxAge * ((long) 1000) : Long.MAX_VALUE);
                if (j11 >= j8) {
                    j10 = DatesKt.MAX_DATE;
                    if (j11 <= DatesKt.MAX_DATE) {
                        j9 = j11;
                    }
                } else {
                    j10 = DatesKt.MAX_DATE;
                }
                j9 = j10;
            } else {
                j9 = expires;
            }
            String strHost = httpUrl.host();
            if (domain == null) {
                str2 = strHost;
                cookie = null;
            } else {
                if (!domainMatch(strHost, domain)) {
                    return null;
                }
                cookie = null;
                str2 = domain;
            }
            if (strHost.length() != str2.length() && PublicSuffixDatabase.Companion.get().getEffectiveTldPlusOne(str2) == null) {
                return cookie;
            }
            String strSubstring = MqttTopic.TOPIC_LEVEL_SEPARATOR;
            if (str4 == null || !k.U0(str4, MqttTopic.TOPIC_LEVEL_SEPARATOR, false)) {
                String strEncodedPath = httpUrl.encodedPath();
                int iM0 = k.M0(strEncodedPath, '/', 0, 6);
                if (iM0 != 0) {
                    strSubstring = strEncodedPath.substring(0, iM0);
                    q0.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                }
                str3 = strSubstring;
            } else {
                str3 = str4;
            }
            return new Cookie(strTrimSubstring$default, strTrimSubstring, j9, str2, str3, z7, z8, z9, z10, null);
        }

        public final List<Cookie> parseAll(HttpUrl httpUrl, Headers headers) {
            q0.h(httpUrl, "url");
            q0.h(headers, "headers");
            List<String> listValues = headers.values("Set-Cookie");
            int size = listValues.size();
            ArrayList arrayList = null;
            for (int i8 = 0; i8 < size; i8++) {
                Cookie cookie = parse(httpUrl, listValues.get(i8));
                if (cookie != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(cookie);
                }
            }
            if (arrayList == null) {
                return q.f30542G;
            }
            List<Cookie> listUnmodifiableList = Collections.unmodifiableList(arrayList);
            q0.g(listUnmodifiableList, "{\n        Collections.un…ableList(cookies)\n      }");
            return listUnmodifiableList;
        }
    }

    public /* synthetic */ Cookie(String str, String str2, long j8, String str3, String str4, boolean z7, boolean z8, boolean z9, boolean z10, e eVar) {
        this(str, str2, j8, str3, str4, z7, z8, z9, z10);
    }

    public static final Cookie parse(HttpUrl httpUrl, String str) {
        return Companion.parse(httpUrl, str);
    }

    public static final List<Cookie> parseAll(HttpUrl httpUrl, Headers headers) {
        return Companion.parseAll(httpUrl, headers);
    }

    /* JADX INFO: renamed from: -deprecated_domain, reason: not valid java name */
    public final String m41deprecated_domain() {
        return this.domain;
    }

    /* JADX INFO: renamed from: -deprecated_expiresAt, reason: not valid java name */
    public final long m42deprecated_expiresAt() {
        return this.expiresAt;
    }

    /* JADX INFO: renamed from: -deprecated_hostOnly, reason: not valid java name */
    public final boolean m43deprecated_hostOnly() {
        return this.hostOnly;
    }

    /* JADX INFO: renamed from: -deprecated_httpOnly, reason: not valid java name */
    public final boolean m44deprecated_httpOnly() {
        return this.httpOnly;
    }

    /* JADX INFO: renamed from: -deprecated_name, reason: not valid java name */
    public final String m45deprecated_name() {
        return this.name;
    }

    /* JADX INFO: renamed from: -deprecated_path, reason: not valid java name */
    public final String m46deprecated_path() {
        return this.path;
    }

    /* JADX INFO: renamed from: -deprecated_persistent, reason: not valid java name */
    public final boolean m47deprecated_persistent() {
        return this.persistent;
    }

    /* JADX INFO: renamed from: -deprecated_secure, reason: not valid java name */
    public final boolean m48deprecated_secure() {
        return this.secure;
    }

    /* JADX INFO: renamed from: -deprecated_value, reason: not valid java name */
    public final String m49deprecated_value() {
        return this.value;
    }

    public final String domain() {
        return this.domain;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Cookie) {
            Cookie cookie = (Cookie) obj;
            if (q0.c(cookie.name, this.name) && q0.c(cookie.value, this.value) && cookie.expiresAt == this.expiresAt && q0.c(cookie.domain, this.domain) && q0.c(cookie.path, this.path) && cookie.secure == this.secure && cookie.httpOnly == this.httpOnly && cookie.persistent == this.persistent && cookie.hostOnly == this.hostOnly) {
                return true;
            }
        }
        return false;
    }

    public final long expiresAt() {
        return this.expiresAt;
    }

    public int hashCode() {
        int iE = U2.e(this.value, U2.e(this.name, 527, 31), 31);
        long j8 = this.expiresAt;
        return ((((((U2.e(this.path, U2.e(this.domain, (iE + ((int) (j8 ^ (j8 >>> 32)))) * 31, 31), 31) + (this.secure ? 1231 : 1237)) * 31) + (this.httpOnly ? 1231 : 1237)) * 31) + (this.persistent ? 1231 : 1237)) * 31) + (this.hostOnly ? 1231 : 1237);
    }

    public final boolean hostOnly() {
        return this.hostOnly;
    }

    public final boolean httpOnly() {
        return this.httpOnly;
    }

    public final boolean matches(HttpUrl httpUrl) {
        q0.h(httpUrl, "url");
        if ((this.hostOnly ? q0.c(httpUrl.host(), this.domain) : Companion.domainMatch(httpUrl.host(), this.domain)) && Companion.pathMatch(httpUrl, this.path)) {
            return !this.secure || httpUrl.isHttps();
        }
        return false;
    }

    public final String name() {
        return this.name;
    }

    public final String path() {
        return this.path;
    }

    public final boolean persistent() {
        return this.persistent;
    }

    public final boolean secure() {
        return this.secure;
    }

    public String toString() {
        return toString$okhttp(false);
    }

    public final String toString$okhttp(boolean z7) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.name);
        sb.append('=');
        sb.append(this.value);
        if (this.persistent) {
            if (this.expiresAt == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(DatesKt.toHttpDateString(new Date(this.expiresAt)));
            }
        }
        if (!this.hostOnly) {
            sb.append("; domain=");
            if (z7) {
                sb.append(".");
            }
            sb.append(this.domain);
        }
        sb.append("; path=");
        sb.append(this.path);
        if (this.secure) {
            sb.append("; secure");
        }
        if (this.httpOnly) {
            sb.append("; httponly");
        }
        String string = sb.toString();
        q0.g(string, "toString()");
        return string;
    }

    public final String value() {
        return this.value;
    }

    private Cookie(String str, String str2, long j8, String str3, String str4, boolean z7, boolean z8, boolean z9, boolean z10) {
        this.name = str;
        this.value = str2;
        this.expiresAt = j8;
        this.domain = str3;
        this.path = str4;
        this.secure = z7;
        this.httpOnly = z8;
        this.persistent = z9;
        this.hostOnly = z10;
    }
}
