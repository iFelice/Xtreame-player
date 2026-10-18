package okhttp3;

import D6.e;
import I6.k;
import I6.l;
import Q6.j;
import com.google.protobuf.U2;
import java.io.EOFException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import p000a.r;
import p162u6.q;
import p162u6.s;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class HttpUrl {
    public static final String FORM_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#&!$(),~";
    public static final String FRAGMENT_ENCODE_SET = "";
    public static final String FRAGMENT_ENCODE_SET_URI = " \"#<>\\^`{|}";
    public static final String PASSWORD_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    public static final String PATH_SEGMENT_ENCODE_SET = " \"<>^`{}|/\\?#";
    public static final String PATH_SEGMENT_ENCODE_SET_URI = "[]";
    public static final String QUERY_COMPONENT_ENCODE_SET = " !\"#$&'(),/:;<=>?@[]\\^`{|}~";
    public static final String QUERY_COMPONENT_ENCODE_SET_URI = "\\^`{|}";
    public static final String QUERY_COMPONENT_REENCODE_SET = " \"'<>#&=";
    public static final String QUERY_ENCODE_SET = " \"'<>#";
    public static final String USERNAME_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    private final String fragment;
    private final String host;
    private final boolean isHttps;
    private final String password;
    private final List<String> pathSegments;
    private final int port;
    private final List<String> queryNamesAndValues;
    private final String scheme;
    private final String url;
    private final String username;
    public static final Companion Companion = new Companion(null);
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static final class Builder {
        public static final Companion Companion = new Companion(null);
        public static final String INVALID_HOST = "Invalid URL host";
        private String encodedFragment;
        private final List<String> encodedPathSegments;
        private List<String> encodedQueryNamesAndValues;
        private String host;
        private String scheme;
        private String encodedUsername = HttpUrl.FRAGMENT_ENCODE_SET;
        private String encodedPassword = HttpUrl.FRAGMENT_ENCODE_SET;
        private int port = -1;

        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(e eVar) {
                this();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int parsePort(String str, int i8, int i9) {
                try {
                    int i10 = Integer.parseInt(Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, i8, i9, HttpUrl.FRAGMENT_ENCODE_SET, false, false, false, false, null, 248, null));
                    if (1 > i10 || i10 >= 65536) {
                        return -1;
                    }
                    return i10;
                } catch (NumberFormatException unused) {
                    return -1;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int portColonOffset(String str, int i8, int i9) {
                while (i8 < i9) {
                    char cCharAt = str.charAt(i8);
                    if (cCharAt == '[') {
                        do {
                            i8++;
                            if (i8 >= i9) {
                                break;
                            }
                        } while (str.charAt(i8) != ']');
                    } else if (cCharAt == ':') {
                        return i8;
                    }
                    i8++;
                }
                return i9;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int schemeDelimiterOffset(String str, int i8, int i9) {
                if (i9 - i8 < 2) {
                    return -1;
                }
                char cCharAt = str.charAt(i8);
                if ((q0.l(cCharAt, 97) < 0 || q0.l(cCharAt, 122) > 0) && (q0.l(cCharAt, 65) < 0 || q0.l(cCharAt, 90) > 0)) {
                    return -1;
                }
                while (true) {
                    i8++;
                    if (i8 >= i9) {
                        return -1;
                    }
                    char cCharAt2 = str.charAt(i8);
                    if ('a' > cCharAt2 || cCharAt2 >= '{') {
                        if ('A' > cCharAt2 || cCharAt2 >= '[') {
                            if ('0' > cCharAt2 || cCharAt2 >= ':') {
                                if (cCharAt2 != '+' && cCharAt2 != '-' && cCharAt2 != '.') {
                                    if (cCharAt2 == ':') {
                                        return i8;
                                    }
                                    return -1;
                                }
                            }
                        }
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int slashCount(String str, int i8, int i9) {
                int i10 = 0;
                while (i8 < i9) {
                    char cCharAt = str.charAt(i8);
                    if (cCharAt != '\\' && cCharAt != '/') {
                        break;
                    }
                    i10++;
                    i8++;
                }
                return i10;
            }
        }

        public Builder() {
            ArrayList arrayList = new ArrayList();
            this.encodedPathSegments = arrayList;
            arrayList.add(HttpUrl.FRAGMENT_ENCODE_SET);
        }

        private final int effectivePort() {
            int i8 = this.port;
            if (i8 != -1) {
                return i8;
            }
            Companion companion = HttpUrl.Companion;
            String str = this.scheme;
            q0.e(str);
            return companion.defaultPort(str);
        }

        private final boolean isDot(String str) {
            return q0.c(str, ".") || k.F0(str, "%2e");
        }

        private final boolean isDotDot(String str) {
            return q0.c(str, "..") || k.F0(str, "%2e.") || k.F0(str, ".%2e") || k.F0(str, "%2e%2e");
        }

        private final void pop() {
            List<String> list = this.encodedPathSegments;
            if (list.remove(list.size() - 1).length() != 0 || !(!this.encodedPathSegments.isEmpty())) {
                this.encodedPathSegments.add(HttpUrl.FRAGMENT_ENCODE_SET);
            } else {
                List<String> list2 = this.encodedPathSegments;
                list2.set(list2.size() - 1, HttpUrl.FRAGMENT_ENCODE_SET);
            }
        }

        private final void push(String str, int i8, int i9, boolean z7, boolean z8) {
            String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, i8, i9, HttpUrl.PATH_SEGMENT_ENCODE_SET, z8, false, false, false, null, 240, null);
            if (isDot(strCanonicalize$okhttp$default)) {
                return;
            }
            if (isDotDot(strCanonicalize$okhttp$default)) {
                pop();
                return;
            }
            List<String> list = this.encodedPathSegments;
            if (list.get(list.size() - 1).length() == 0) {
                List<String> list2 = this.encodedPathSegments;
                list2.set(list2.size() - 1, strCanonicalize$okhttp$default);
            } else {
                this.encodedPathSegments.add(strCanonicalize$okhttp$default);
            }
            if (z7) {
                this.encodedPathSegments.add(HttpUrl.FRAGMENT_ENCODE_SET);
            }
        }

        private final void removeAllCanonicalQueryParameters(String str) {
            List<String> list = this.encodedQueryNamesAndValues;
            q0.e(list);
            int size = list.size() - 2;
            int I7 = p190y4.k.I(size, 0, -2);
            if (I7 > size) {
                return;
            }
            while (true) {
                List<String> list2 = this.encodedQueryNamesAndValues;
                q0.e(list2);
                if (q0.c(str, list2.get(size))) {
                    List<String> list3 = this.encodedQueryNamesAndValues;
                    q0.e(list3);
                    list3.remove(size + 1);
                    List<String> list4 = this.encodedQueryNamesAndValues;
                    q0.e(list4);
                    list4.remove(size);
                    List<String> list5 = this.encodedQueryNamesAndValues;
                    q0.e(list5);
                    if (list5.isEmpty()) {
                        this.encodedQueryNamesAndValues = null;
                        return;
                    }
                }
                if (size == I7) {
                    return;
                } else {
                    size -= 2;
                }
            }
        }

        private final void resolvePath(String str, int i8, int i9) {
            if (i8 == i9) {
                return;
            }
            char cCharAt = str.charAt(i8);
            if (cCharAt == '/' || cCharAt == '\\') {
                this.encodedPathSegments.clear();
                this.encodedPathSegments.add(HttpUrl.FRAGMENT_ENCODE_SET);
                i8++;
            } else {
                List<String> list = this.encodedPathSegments;
                list.set(list.size() - 1, HttpUrl.FRAGMENT_ENCODE_SET);
            }
            while (true) {
                int i10 = i8;
                while (i10 < i9) {
                    i8 = Util.delimiterOffset(str, "/\\", i10, i9);
                    boolean z7 = i8 < i9;
                    push(str, i10, i8, z7, true);
                    if (z7) {
                        i10 = i8 + 1;
                    }
                }
                return;
            }
        }

        public final Builder addEncodedPathSegment(String str) {
            q0.h(str, "encodedPathSegment");
            push(str, 0, str.length(), false, true);
            return this;
        }

        public final Builder addEncodedPathSegments(String str) {
            q0.h(str, "encodedPathSegments");
            return addPathSegments(str, true);
        }

        public final Builder addEncodedQueryParameter(String str, String str2) {
            q0.h(str, "encodedName");
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            List<String> list = this.encodedQueryNamesAndValues;
            q0.e(list);
            Companion companion = HttpUrl.Companion;
            list.add(Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, 211, null));
            List<String> list2 = this.encodedQueryNamesAndValues;
            q0.e(list2);
            list2.add(str2 != null ? Companion.canonicalize$okhttp$default(companion, str2, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, 211, null) : null);
            return this;
        }

        public final Builder addPathSegment(String str) {
            q0.h(str, "pathSegment");
            push(str, 0, str.length(), false, false);
            return this;
        }

        public final Builder addPathSegments(String str) {
            q0.h(str, "pathSegments");
            return addPathSegments(str, false);
        }

        public final Builder addQueryParameter(String str, String str2) {
            q0.h(str, "name");
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            List<String> list = this.encodedQueryNamesAndValues;
            q0.e(list);
            Companion companion = HttpUrl.Companion;
            list.add(Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null));
            List<String> list2 = this.encodedQueryNamesAndValues;
            q0.e(list2);
            list2.add(str2 != null ? Companion.canonicalize$okhttp$default(companion, str2, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null) : null);
            return this;
        }

        public final HttpUrl build() {
            ArrayList arrayList;
            String str = this.scheme;
            if (str == null) {
                throw new IllegalStateException("scheme == null");
            }
            Companion companion = HttpUrl.Companion;
            String strPercentDecode$okhttp$default = Companion.percentDecode$okhttp$default(companion, this.encodedUsername, 0, 0, false, 7, null);
            String strPercentDecode$okhttp$default2 = Companion.percentDecode$okhttp$default(companion, this.encodedPassword, 0, 0, false, 7, null);
            String str2 = this.host;
            if (str2 == null) {
                throw new IllegalStateException("host == null");
            }
            int iEffectivePort = effectivePort();
            List<String> list = this.encodedPathSegments;
            ArrayList arrayList2 = new ArrayList(p162u6.k.v(list));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList2.add(Companion.percentDecode$okhttp$default(HttpUrl.Companion, (String) it.next(), 0, 0, false, 7, null));
            }
            List<String> list2 = this.encodedQueryNamesAndValues;
            if (list2 != null) {
                arrayList = new ArrayList(p162u6.k.v(list2));
                for (String str3 : list2) {
                    arrayList.add(str3 != null ? Companion.percentDecode$okhttp$default(HttpUrl.Companion, str3, 0, 0, true, 3, null) : null);
                }
            } else {
                arrayList = null;
            }
            String str4 = this.encodedFragment;
            return new HttpUrl(str, strPercentDecode$okhttp$default, strPercentDecode$okhttp$default2, str2, iEffectivePort, arrayList2, arrayList, str4 != null ? Companion.percentDecode$okhttp$default(HttpUrl.Companion, str4, 0, 0, false, 7, null) : null, toString());
        }

        public final Builder encodedFragment(String str) {
            this.encodedFragment = str != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.FRAGMENT_ENCODE_SET, true, false, false, true, null, 179, null) : null;
            return this;
        }

        public final Builder encodedPassword(String str) {
            q0.h(str, "encodedPassword");
            this.encodedPassword = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 243, null);
            return this;
        }

        public final Builder encodedPath(String str) {
            q0.h(str, "encodedPath");
            if (!k.U0(str, MqttTopic.TOPIC_LEVEL_SEPARATOR, false)) {
                throw new IllegalArgumentException("unexpected encodedPath: ".concat(str).toString());
            }
            resolvePath(str, 0, str.length());
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:6:0x001d  */
        public final Builder encodedQuery(String str) {
            List<String> queryNamesAndValues$okhttp;
            if (str != null) {
                Companion companion = HttpUrl.Companion;
                String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.QUERY_ENCODE_SET, true, false, true, false, null, 211, null);
                if (strCanonicalize$okhttp$default != null) {
                    queryNamesAndValues$okhttp = companion.toQueryNamesAndValues$okhttp(strCanonicalize$okhttp$default);
                } else {
                    queryNamesAndValues$okhttp = null;
                }
            } else {
                queryNamesAndValues$okhttp = null;
            }
            this.encodedQueryNamesAndValues = queryNamesAndValues$okhttp;
            return this;
        }

        public final Builder encodedUsername(String str) {
            q0.h(str, "encodedUsername");
            this.encodedUsername = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 243, null);
            return this;
        }

        public final Builder fragment(String str) {
            this.encodedFragment = str != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.FRAGMENT_ENCODE_SET, false, false, false, true, null, 187, null) : null;
            return this;
        }

        public final String getEncodedFragment$okhttp() {
            return this.encodedFragment;
        }

        public final String getEncodedPassword$okhttp() {
            return this.encodedPassword;
        }

        public final List<String> getEncodedPathSegments$okhttp() {
            return this.encodedPathSegments;
        }

        public final List<String> getEncodedQueryNamesAndValues$okhttp() {
            return this.encodedQueryNamesAndValues;
        }

        public final String getEncodedUsername$okhttp() {
            return this.encodedUsername;
        }

        public final String getHost$okhttp() {
            return this.host;
        }

        public final int getPort$okhttp() {
            return this.port;
        }

        public final String getScheme$okhttp() {
            return this.scheme;
        }

        public final Builder host(String str) {
            q0.h(str, "host");
            String canonicalHost = HostnamesKt.toCanonicalHost(Companion.percentDecode$okhttp$default(HttpUrl.Companion, str, 0, 0, false, 7, null));
            if (canonicalHost == null) {
                throw new IllegalArgumentException("unexpected host: ".concat(str));
            }
            this.host = canonicalHost;
            return this;
        }

        public final Builder parse$okhttp(HttpUrl httpUrl, String str) {
            int iDelimiterOffset;
            int i8;
            int i9;
            boolean z7;
            String strConcat = str;
            q0.h(strConcat, "input");
            int iIndexOfFirstNonAsciiWhitespace$default = Util.indexOfFirstNonAsciiWhitespace$default(strConcat, 0, 0, 3, null);
            int iIndexOfLastNonAsciiWhitespace$default = Util.indexOfLastNonAsciiWhitespace$default(strConcat, iIndexOfFirstNonAsciiWhitespace$default, 0, 2, null);
            Companion companion = Companion;
            int iSchemeDelimiterOffset = companion.schemeDelimiterOffset(strConcat, iIndexOfFirstNonAsciiWhitespace$default, iIndexOfLastNonAsciiWhitespace$default);
            byte b8 = -1;
            if (iSchemeDelimiterOffset != -1) {
                if (k.T0(strConcat, iIndexOfFirstNonAsciiWhitespace$default, "https:", true)) {
                    this.scheme = "https";
                    iIndexOfFirstNonAsciiWhitespace$default += 6;
                } else {
                    if (!k.T0(strConcat, iIndexOfFirstNonAsciiWhitespace$default, "http:", true)) {
                        StringBuilder sb = new StringBuilder("Expected URL scheme 'http' or 'https' but was '");
                        String strSubstring = strConcat.substring(0, iSchemeDelimiterOffset);
                        q0.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                        sb.append(strSubstring);
                        sb.append('\'');
                        throw new IllegalArgumentException(sb.toString());
                    }
                    this.scheme = "http";
                    iIndexOfFirstNonAsciiWhitespace$default += 5;
                }
            } else {
                if (httpUrl == null) {
                    if (str.length() > 6) {
                        strConcat = l.Y0(6, strConcat).concat("...");
                    }
                    throw new IllegalArgumentException(p148t.a.c("Expected URL scheme 'http' or 'https' but no scheme was found for ", strConcat));
                }
                this.scheme = httpUrl.scheme();
            }
            int iSlashCount = companion.slashCount(strConcat, iIndexOfFirstNonAsciiWhitespace$default, iIndexOfLastNonAsciiWhitespace$default);
            byte b9 = 63;
            byte b10 = 35;
            if (iSlashCount >= 2 || httpUrl == null || !q0.c(httpUrl.scheme(), this.scheme)) {
                int i10 = iIndexOfFirstNonAsciiWhitespace$default + iSlashCount;
                boolean z8 = false;
                boolean z9 = false;
                while (true) {
                    iDelimiterOffset = Util.delimiterOffset(strConcat, "@/\\?#", i10, iIndexOfLastNonAsciiWhitespace$default);
                    byte bCharAt = iDelimiterOffset != iIndexOfLastNonAsciiWhitespace$default ? strConcat.charAt(iDelimiterOffset) : (byte) -1;
                    if (bCharAt == b8 || bCharAt == b10 || bCharAt == 47 || bCharAt == 92 || bCharAt == b9) {
                        break;
                    }
                    if (bCharAt == 64) {
                        if (z8) {
                            i9 = iDelimiterOffset;
                            this.encodedPassword += "%40" + Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, i10, i9, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                        } else {
                            int iDelimiterOffset2 = Util.delimiterOffset(strConcat, ':', i10, iDelimiterOffset);
                            Companion companion2 = HttpUrl.Companion;
                            String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(companion2, str, i10, iDelimiterOffset2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                            if (z9) {
                                strCanonicalize$okhttp$default = U2.n(new StringBuilder(), this.encodedUsername, "%40", strCanonicalize$okhttp$default);
                            }
                            this.encodedUsername = strCanonicalize$okhttp$default;
                            i9 = iDelimiterOffset;
                            if (iDelimiterOffset2 != i9) {
                                this.encodedPassword = Companion.canonicalize$okhttp$default(companion2, str, iDelimiterOffset2 + 1, i9, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                                z7 = true;
                            } else {
                                z7 = z8;
                            }
                            z8 = z7;
                            z9 = true;
                        }
                        i10 = i9 + 1;
                        iIndexOfLastNonAsciiWhitespace$default = iIndexOfLastNonAsciiWhitespace$default;
                        b10 = 35;
                        b9 = 63;
                        b8 = -1;
                    }
                }
                i8 = iIndexOfLastNonAsciiWhitespace$default;
                Companion companion3 = Companion;
                int iPortColonOffset = companion3.portColonOffset(strConcat, i10, iDelimiterOffset);
                int i11 = iPortColonOffset + 1;
                if (i11 < iDelimiterOffset) {
                    this.host = HostnamesKt.toCanonicalHost(Companion.percentDecode$okhttp$default(HttpUrl.Companion, str, i10, iPortColonOffset, false, 4, null));
                    int port = companion3.parsePort(strConcat, i11, iDelimiterOffset);
                    this.port = port;
                    if (port == -1) {
                        StringBuilder sb2 = new StringBuilder("Invalid URL port: \"");
                        String strSubstring2 = strConcat.substring(i11, iDelimiterOffset);
                        q0.g(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                        sb2.append(strSubstring2);
                        sb2.append('\"');
                        throw new IllegalArgumentException(sb2.toString().toString());
                    }
                } else {
                    Companion companion4 = HttpUrl.Companion;
                    this.host = HostnamesKt.toCanonicalHost(Companion.percentDecode$okhttp$default(companion4, str, i10, iPortColonOffset, false, 4, null));
                    String str2 = this.scheme;
                    q0.e(str2);
                    this.port = companion4.defaultPort(str2);
                }
                if (this.host == null) {
                    StringBuilder sb3 = new StringBuilder("Invalid URL host: \"");
                    String strSubstring3 = strConcat.substring(i10, iPortColonOffset);
                    q0.g(strSubstring3, "this as java.lang.String…ing(startIndex, endIndex)");
                    sb3.append(strSubstring3);
                    sb3.append('\"');
                    throw new IllegalArgumentException(sb3.toString().toString());
                }
                iIndexOfFirstNonAsciiWhitespace$default = iDelimiterOffset;
            } else {
                this.encodedUsername = httpUrl.encodedUsername();
                this.encodedPassword = httpUrl.encodedPassword();
                this.host = httpUrl.host();
                this.port = httpUrl.port();
                this.encodedPathSegments.clear();
                this.encodedPathSegments.addAll(httpUrl.encodedPathSegments());
                if (iIndexOfFirstNonAsciiWhitespace$default == iIndexOfLastNonAsciiWhitespace$default || strConcat.charAt(iIndexOfFirstNonAsciiWhitespace$default) == '#') {
                    encodedQuery(httpUrl.encodedQuery());
                }
                i8 = iIndexOfLastNonAsciiWhitespace$default;
            }
            int i12 = i8;
            int iDelimiterOffset3 = Util.delimiterOffset(strConcat, "?#", iIndexOfFirstNonAsciiWhitespace$default, i12);
            resolvePath(strConcat, iIndexOfFirstNonAsciiWhitespace$default, iDelimiterOffset3);
            if (iDelimiterOffset3 < i12 && strConcat.charAt(iDelimiterOffset3) == '?') {
                int iDelimiterOffset4 = Util.delimiterOffset(strConcat, '#', iDelimiterOffset3, i12);
                Companion companion5 = HttpUrl.Companion;
                this.encodedQueryNamesAndValues = companion5.toQueryNamesAndValues$okhttp(Companion.canonicalize$okhttp$default(companion5, str, iDelimiterOffset3 + 1, iDelimiterOffset4, HttpUrl.QUERY_ENCODE_SET, true, false, true, false, null, 208, null));
                iDelimiterOffset3 = iDelimiterOffset4;
            }
            if (iDelimiterOffset3 < i12 && strConcat.charAt(iDelimiterOffset3) == '#') {
                this.encodedFragment = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, iDelimiterOffset3 + 1, i12, HttpUrl.FRAGMENT_ENCODE_SET, true, false, false, true, null, 176, null);
            }
            return this;
        }

        public final Builder password(String str) {
            q0.h(str, "password");
            this.encodedPassword = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251, null);
            return this;
        }

        public final Builder port(int i8) {
            if (1 > i8 || i8 >= 65536) {
                throw new IllegalArgumentException(r.f("unexpected port: ", i8).toString());
            }
            this.port = i8;
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:6:0x001d  */
        public final Builder query(String str) {
            List<String> queryNamesAndValues$okhttp;
            if (str != null) {
                Companion companion = HttpUrl.Companion;
                String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.QUERY_ENCODE_SET, false, false, true, false, null, 219, null);
                if (strCanonicalize$okhttp$default != null) {
                    queryNamesAndValues$okhttp = companion.toQueryNamesAndValues$okhttp(strCanonicalize$okhttp$default);
                } else {
                    queryNamesAndValues$okhttp = null;
                }
            } else {
                queryNamesAndValues$okhttp = null;
            }
            this.encodedQueryNamesAndValues = queryNamesAndValues$okhttp;
            return this;
        }

        public final Builder reencodeForUri$okhttp() {
            String strReplaceAll;
            String str = this.host;
            if (str != null) {
                Pattern patternCompile = Pattern.compile("[\"<>^`{|}]");
                q0.g(patternCompile, "compile(...)");
                strReplaceAll = patternCompile.matcher(str).replaceAll(HttpUrl.FRAGMENT_ENCODE_SET);
                q0.g(strReplaceAll, "replaceAll(...)");
            } else {
                strReplaceAll = null;
            }
            this.host = strReplaceAll;
            int size = this.encodedPathSegments.size();
            for (int i8 = 0; i8 < size; i8++) {
                List<String> list = this.encodedPathSegments;
                list.set(i8, Companion.canonicalize$okhttp$default(HttpUrl.Companion, list.get(i8), 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, true, true, false, false, null, 227, null));
            }
            List<String> list2 = this.encodedQueryNamesAndValues;
            if (list2 != null) {
                int size2 = list2.size();
                for (int i9 = 0; i9 < size2; i9++) {
                    String str2 = list2.get(i9);
                    list2.set(i9, str2 != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str2, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET_URI, true, true, true, false, null, 195, null) : null);
                }
            }
            String str3 = this.encodedFragment;
            this.encodedFragment = str3 != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str3, 0, 0, HttpUrl.FRAGMENT_ENCODE_SET_URI, true, true, false, true, null, 163, null) : null;
            return this;
        }

        public final Builder removeAllEncodedQueryParameters(String str) {
            q0.h(str, "encodedName");
            if (this.encodedQueryNamesAndValues == null) {
                return this;
            }
            removeAllCanonicalQueryParameters(Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, 211, null));
            return this;
        }

        public final Builder removeAllQueryParameters(String str) {
            q0.h(str, "name");
            if (this.encodedQueryNamesAndValues == null) {
                return this;
            }
            removeAllCanonicalQueryParameters(Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null));
            return this;
        }

        public final Builder removePathSegment(int i8) {
            this.encodedPathSegments.remove(i8);
            if (this.encodedPathSegments.isEmpty()) {
                this.encodedPathSegments.add(HttpUrl.FRAGMENT_ENCODE_SET);
            }
            return this;
        }

        public final Builder scheme(String str) {
            q0.h(str, "scheme");
            if (k.F0(str, "http")) {
                this.scheme = "http";
            } else {
                if (!k.F0(str, "https")) {
                    throw new IllegalArgumentException("unexpected scheme: ".concat(str));
                }
                this.scheme = "https";
            }
            return this;
        }

        public final void setEncodedFragment$okhttp(String str) {
            this.encodedFragment = str;
        }

        public final void setEncodedPassword$okhttp(String str) {
            q0.h(str, "<set-?>");
            this.encodedPassword = str;
        }

        public final Builder setEncodedPathSegment(int i8, String str) {
            q0.h(str, "encodedPathSegment");
            String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET, true, false, false, false, null, 243, null);
            this.encodedPathSegments.set(i8, strCanonicalize$okhttp$default);
            if (isDot(strCanonicalize$okhttp$default) || isDotDot(strCanonicalize$okhttp$default)) {
                throw new IllegalArgumentException("unexpected path segment: ".concat(str).toString());
            }
            return this;
        }

        public final void setEncodedQueryNamesAndValues$okhttp(List<String> list) {
            this.encodedQueryNamesAndValues = list;
        }

        public final Builder setEncodedQueryParameter(String str, String str2) {
            q0.h(str, "encodedName");
            removeAllEncodedQueryParameters(str);
            addEncodedQueryParameter(str, str2);
            return this;
        }

        public final void setEncodedUsername$okhttp(String str) {
            q0.h(str, "<set-?>");
            this.encodedUsername = str;
        }

        public final void setHost$okhttp(String str) {
            this.host = str;
        }

        public final Builder setPathSegment(int i8, String str) {
            q0.h(str, "pathSegment");
            String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET, false, false, false, false, null, 251, null);
            if (isDot(strCanonicalize$okhttp$default) || isDotDot(strCanonicalize$okhttp$default)) {
                throw new IllegalArgumentException("unexpected path segment: ".concat(str).toString());
            }
            this.encodedPathSegments.set(i8, strCanonicalize$okhttp$default);
            return this;
        }

        public final void setPort$okhttp(int i8) {
            this.port = i8;
        }

        public final Builder setQueryParameter(String str, String str2) {
            q0.h(str, "name");
            removeAllQueryParameters(str);
            addQueryParameter(str, str2);
            return this;
        }

        public final void setScheme$okhttp(String str) {
            this.scheme = str;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            String str = this.scheme;
            if (str != null) {
                sb.append(str);
                sb.append("://");
            } else {
                sb.append("//");
            }
            if (this.encodedUsername.length() > 0 || this.encodedPassword.length() > 0) {
                sb.append(this.encodedUsername);
                if (this.encodedPassword.length() > 0) {
                    sb.append(':');
                    sb.append(this.encodedPassword);
                }
                sb.append('@');
            }
            String str2 = this.host;
            if (str2 != null) {
                if (k.C0(str2, ':')) {
                    sb.append('[');
                    sb.append(this.host);
                    sb.append(']');
                } else {
                    sb.append(this.host);
                }
            }
            if (this.port != -1 || this.scheme != null) {
                int iEffectivePort = effectivePort();
                String str3 = this.scheme;
                if (str3 == null || iEffectivePort != HttpUrl.Companion.defaultPort(str3)) {
                    sb.append(':');
                    sb.append(iEffectivePort);
                }
            }
            Companion companion = HttpUrl.Companion;
            companion.toPathString$okhttp(this.encodedPathSegments, sb);
            if (this.encodedQueryNamesAndValues != null) {
                sb.append('?');
                List<String> list = this.encodedQueryNamesAndValues;
                q0.e(list);
                companion.toQueryString$okhttp(list, sb);
            }
            if (this.encodedFragment != null) {
                sb.append('#');
                sb.append(this.encodedFragment);
            }
            String string = sb.toString();
            q0.g(string, "StringBuilder().apply(builderAction).toString()");
            return string;
        }

        public final Builder username(String str) {
            q0.h(str, "username");
            this.encodedUsername = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251, null);
            return this;
        }

        private final Builder addPathSegments(String str, boolean z7) {
            int i8 = 0;
            do {
                int iDelimiterOffset = Util.delimiterOffset(str, "/\\", i8, str.length());
                push(str, i8, iDelimiterOffset, iDelimiterOffset < str.length(), z7);
                i8 = iDelimiterOffset + 1;
            } while (i8 <= str.length());
            return this;
        }
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }

        public static /* synthetic */ String canonicalize$okhttp$default(Companion companion, String str, int i8, int i9, String str2, boolean z7, boolean z8, boolean z9, boolean z10, Charset charset, int i10, Object obj) {
            return companion.canonicalize$okhttp(str, (i10 & 1) != 0 ? 0 : i8, (i10 & 2) != 0 ? str.length() : i9, str2, (i10 & 8) != 0 ? false : z7, (i10 & 16) != 0 ? false : z8, (i10 & 32) != 0 ? false : z9, (i10 & 64) != 0 ? false : z10, (i10 & 128) != 0 ? null : charset);
        }

        private final boolean isPercentEncoded(String str, int i8, int i9) {
            int i10 = i8 + 2;
            return i10 < i9 && str.charAt(i8) == '%' && Util.parseHexDigit(str.charAt(i8 + 1)) != -1 && Util.parseHexDigit(str.charAt(i10)) != -1;
        }

        public static /* synthetic */ String percentDecode$okhttp$default(Companion companion, String str, int i8, int i9, boolean z7, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i8 = 0;
            }
            if ((i10 & 2) != 0) {
                i9 = str.length();
            }
            if ((i10 & 4) != 0) {
                z7 = false;
            }
            return companion.percentDecode$okhttp(str, i8, i9, z7);
        }

        /* JADX WARN: Code duplicated, block: B:39:0x0064  */
        /* JADX WARN: Code duplicated, block: B:40:0x0066  */
        /* JADX WARN: Code duplicated, block: B:43:0x006e  */
        /* JADX WARN: Code duplicated, block: B:49:0x0087  */
        /* JADX WARN: Code duplicated, block: B:52:0x0090 A[LOOP:1: B:50:0x008a->B:52:0x0090, LOOP_END] */
        private final void writeCanonicalized(j jVar, String str, int i8, int i9, String str2, boolean z7, boolean z8, boolean z9, boolean z10, Charset charset) throws EOFException {
            j jVar2 = null;
            int iCharCount = i8;
            while (iCharCount < i9) {
                int iCodePointAt = str.codePointAt(iCharCount);
                if (!z7 || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                    if (iCodePointAt == 43 && z9) {
                        jVar.w0(z7 ? MqttTopic.SINGLE_LEVEL_WILDCARD : "%2B");
                    } else if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && !z10) || k.C0(str2, (char) iCodePointAt))) {
                        if (jVar2 == null) {
                            jVar2 = new j();
                        }
                        if (charset != null || q0.c(charset, StandardCharsets.UTF_8)) {
                            jVar2.x0(iCodePointAt);
                        } else {
                            jVar2.u0(str, iCharCount, Character.charCount(iCodePointAt) + iCharCount, charset);
                        }
                        while (!jVar2.q()) {
                            byte b8 = jVar2.readByte();
                            jVar.o0(37);
                            jVar.o0(HttpUrl.HEX_DIGITS[((b8 & 255) >> 4) & 15]);
                            jVar.o0(HttpUrl.HEX_DIGITS[b8 & 15]);
                        }
                    } else {
                        if (iCodePointAt == 37) {
                            if (z7) {
                                if (z8) {
                                    if (!isPercentEncoded(str, iCharCount, i9)) {
                                    }
                                }
                            }
                            if (jVar2 == null) {
                                jVar2 = new j();
                            }
                            if (charset != null) {
                                jVar2.x0(iCodePointAt);
                            } else {
                                jVar2.x0(iCodePointAt);
                            }
                            while (!jVar2.q()) {
                                byte b9 = jVar2.readByte();
                                jVar.o0(37);
                                jVar.o0(HttpUrl.HEX_DIGITS[((b9 & 255) >> 4) & 15]);
                                jVar.o0(HttpUrl.HEX_DIGITS[b9 & 15]);
                            }
                        }
                        jVar.x0(iCodePointAt);
                    }
                }
                iCharCount += Character.charCount(iCodePointAt);
            }
        }

        private final void writePercentDecoded(j jVar, String str, int i8, int i9, boolean z7) {
            int i10;
            while (i8 < i9) {
                int iCodePointAt = str.codePointAt(i8);
                if (iCodePointAt == 37 && (i10 = i8 + 2) < i9) {
                    int hexDigit = Util.parseHexDigit(str.charAt(i8 + 1));
                    int hexDigit2 = Util.parseHexDigit(str.charAt(i10));
                    if (hexDigit == -1 || hexDigit2 == -1) {
                        jVar.x0(iCodePointAt);
                        i8 += Character.charCount(iCodePointAt);
                    } else {
                        jVar.o0((hexDigit << 4) + hexDigit2);
                        i8 = Character.charCount(iCodePointAt) + i10;
                    }
                } else if (iCodePointAt == 43 && z7) {
                    jVar.o0(32);
                    i8++;
                } else {
                    jVar.x0(iCodePointAt);
                    i8 += Character.charCount(iCodePointAt);
                }
            }
        }

        /* JADX INFO: renamed from: -deprecated_get, reason: not valid java name */
        public final HttpUrl m81deprecated_get(String str) {
            q0.h(str, "url");
            return get(str);
        }

        /* JADX INFO: renamed from: -deprecated_parse, reason: not valid java name */
        public final HttpUrl m84deprecated_parse(String str) {
            q0.h(str, "url");
            return parse(str);
        }

        /* JADX WARN: Code duplicated, block: B:22:0x003e  */
        public final String canonicalize$okhttp(String str, int i8, int i9, String str2, boolean z7, boolean z8, boolean z9, boolean z10, Charset charset) throws EOFException {
            q0.h(str, "<this>");
            q0.h(str2, "encodeSet");
            int iCharCount = i8;
            while (true) {
                if (iCharCount >= i9) {
                    String strSubstring = str.substring(i8, i9);
                    q0.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    return strSubstring;
                }
                int iCodePointAt = str.codePointAt(iCharCount);
                if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && !z10) || k.C0(str2, (char) iCodePointAt))) {
                    break;
                }
                if (iCodePointAt == 37) {
                    if (!z7) {
                        break;
                    }
                    if (z8) {
                        if (isPercentEncoded(str, iCharCount, i9)) {
                        }
                    }
                    if (iCodePointAt == 43) {
                    }
                    iCharCount += Character.charCount(iCodePointAt);
                } else if (iCodePointAt == 43 || !z9) {
                    iCharCount += Character.charCount(iCodePointAt);
                }
                j jVar = new j();
                jVar.v0(i8, iCharCount, str);
                writeCanonicalized(jVar, str, iCharCount, i9, str2, z7, z8, z9, z10, charset);
                return jVar.h0();
            }
            j jVar2 = new j();
            jVar2.v0(i8, iCharCount, str);
            writeCanonicalized(jVar2, str, iCharCount, i9, str2, z7, z8, z9, z10, charset);
            return jVar2.h0();
        }

        public final int defaultPort(String str) {
            q0.h(str, "scheme");
            if (q0.c(str, "http")) {
                return 80;
            }
            return q0.c(str, "https") ? 443 : -1;
        }

        public final HttpUrl get(String str) {
            q0.h(str, "<this>");
            return new Builder().parse$okhttp(null, str).build();
        }

        public final HttpUrl parse(String str) {
            q0.h(str, "<this>");
            try {
                return get(str);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        public final String percentDecode$okhttp(String str, int i8, int i9, boolean z7) {
            q0.h(str, "<this>");
            for (int i10 = i8; i10 < i9; i10++) {
                char cCharAt = str.charAt(i10);
                if (cCharAt == '%' || (cCharAt == '+' && z7)) {
                    j jVar = new j();
                    jVar.v0(i8, i10, str);
                    writePercentDecoded(jVar, str, i10, i9, z7);
                    return jVar.h0();
                }
            }
            String strSubstring = str.substring(i8, i9);
            q0.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            return strSubstring;
        }

        public final void toPathString$okhttp(List<String> list, StringBuilder sb) {
            q0.h(list, "<this>");
            q0.h(sb, "out");
            int size = list.size();
            for (int i8 = 0; i8 < size; i8++) {
                sb.append('/');
                sb.append(list.get(i8));
            }
        }

        public final List<String> toQueryNamesAndValues$okhttp(String str) {
            q0.h(str, "<this>");
            ArrayList arrayList = new ArrayList();
            int i8 = 0;
            while (i8 <= str.length()) {
                int iI0 = k.I0(str, '&', i8, false, 4);
                if (iI0 == -1) {
                    iI0 = str.length();
                }
                int iI1 = k.I0(str, '=', i8, false, 4);
                if (iI1 == -1 || iI1 > iI0) {
                    String strSubstring = str.substring(i8, iI0);
                    q0.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    arrayList.add(strSubstring);
                    arrayList.add(null);
                } else {
                    String strSubstring2 = str.substring(i8, iI1);
                    q0.g(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                    arrayList.add(strSubstring2);
                    String strSubstring3 = str.substring(iI1 + 1, iI0);
                    q0.g(strSubstring3, "this as java.lang.String…ing(startIndex, endIndex)");
                    arrayList.add(strSubstring3);
                }
                i8 = iI0 + 1;
            }
            return arrayList;
        }

        public final void toQueryString$okhttp(List<String> list, StringBuilder sb) {
            q0.h(list, "<this>");
            q0.h(sb, "out");
            F6.a aVarP = S3.e.p(S3.e.s(0, list.size()), 2);
            int i8 = aVarP.f3265G;
            int i9 = aVarP.f3266H;
            int i10 = aVarP.f3267I;
            if ((i10 <= 0 || i8 > i9) && (i10 >= 0 || i9 > i8)) {
                return;
            }
            while (true) {
                String str = list.get(i8);
                String str2 = list.get(i8 + 1);
                if (i8 > 0) {
                    sb.append('&');
                }
                sb.append(str);
                if (str2 != null) {
                    sb.append('=');
                    sb.append(str2);
                }
                if (i8 == i9) {
                    return;
                } else {
                    i8 += i10;
                }
            }
        }

        /* JADX INFO: renamed from: -deprecated_get, reason: not valid java name */
        public final HttpUrl m83deprecated_get(URL url) {
            q0.h(url, "url");
            return get(url);
        }

        public final HttpUrl get(URL url) {
            q0.h(url, "<this>");
            String string = url.toString();
            q0.g(string, "toString()");
            return parse(string);
        }

        /* JADX INFO: renamed from: -deprecated_get, reason: not valid java name */
        public final HttpUrl m82deprecated_get(URI uri) {
            q0.h(uri, "uri");
            return get(uri);
        }

        public final HttpUrl get(URI uri) {
            q0.h(uri, "<this>");
            String string = uri.toString();
            q0.g(string, "toString()");
            return parse(string);
        }
    }

    public HttpUrl(String str, String str2, String str3, String str4, int i8, List<String> list, List<String> list2, String str5, String str6) {
        q0.h(str, "scheme");
        q0.h(str2, "username");
        q0.h(str3, "password");
        q0.h(str4, "host");
        q0.h(list, "pathSegments");
        q0.h(str6, "url");
        this.scheme = str;
        this.username = str2;
        this.password = str3;
        this.host = str4;
        this.port = i8;
        this.pathSegments = list;
        this.queryNamesAndValues = list2;
        this.fragment = str5;
        this.url = str6;
        this.isHttps = q0.c(str, "https");
    }

    public static final int defaultPort(String str) {
        return Companion.defaultPort(str);
    }

    public static final HttpUrl get(String str) {
        return Companion.get(str);
    }

    public static final HttpUrl parse(String str) {
        return Companion.parse(str);
    }

    /* JADX INFO: renamed from: -deprecated_encodedFragment, reason: not valid java name */
    public final String m62deprecated_encodedFragment() {
        return encodedFragment();
    }

    /* JADX INFO: renamed from: -deprecated_encodedPassword, reason: not valid java name */
    public final String m63deprecated_encodedPassword() {
        return encodedPassword();
    }

    /* JADX INFO: renamed from: -deprecated_encodedPath, reason: not valid java name */
    public final String m64deprecated_encodedPath() {
        return encodedPath();
    }

    /* JADX INFO: renamed from: -deprecated_encodedPathSegments, reason: not valid java name */
    public final List<String> m65deprecated_encodedPathSegments() {
        return encodedPathSegments();
    }

    /* JADX INFO: renamed from: -deprecated_encodedQuery, reason: not valid java name */
    public final String m66deprecated_encodedQuery() {
        return encodedQuery();
    }

    /* JADX INFO: renamed from: -deprecated_encodedUsername, reason: not valid java name */
    public final String m67deprecated_encodedUsername() {
        return encodedUsername();
    }

    /* JADX INFO: renamed from: -deprecated_fragment, reason: not valid java name */
    public final String m68deprecated_fragment() {
        return this.fragment;
    }

    /* JADX INFO: renamed from: -deprecated_host, reason: not valid java name */
    public final String m69deprecated_host() {
        return this.host;
    }

    /* JADX INFO: renamed from: -deprecated_password, reason: not valid java name */
    public final String m70deprecated_password() {
        return this.password;
    }

    /* JADX INFO: renamed from: -deprecated_pathSegments, reason: not valid java name */
    public final List<String> m71deprecated_pathSegments() {
        return this.pathSegments;
    }

    /* JADX INFO: renamed from: -deprecated_pathSize, reason: not valid java name */
    public final int m72deprecated_pathSize() {
        return pathSize();
    }

    /* JADX INFO: renamed from: -deprecated_port, reason: not valid java name */
    public final int m73deprecated_port() {
        return this.port;
    }

    /* JADX INFO: renamed from: -deprecated_query, reason: not valid java name */
    public final String m74deprecated_query() {
        return query();
    }

    /* JADX INFO: renamed from: -deprecated_queryParameterNames, reason: not valid java name */
    public final Set<String> m75deprecated_queryParameterNames() {
        return queryParameterNames();
    }

    /* JADX INFO: renamed from: -deprecated_querySize, reason: not valid java name */
    public final int m76deprecated_querySize() {
        return querySize();
    }

    /* JADX INFO: renamed from: -deprecated_scheme, reason: not valid java name */
    public final String m77deprecated_scheme() {
        return this.scheme;
    }

    /* JADX INFO: renamed from: -deprecated_uri, reason: not valid java name */
    public final URI m78deprecated_uri() {
        return uri();
    }

    /* JADX INFO: renamed from: -deprecated_url, reason: not valid java name */
    public final URL m79deprecated_url() {
        return url();
    }

    /* JADX INFO: renamed from: -deprecated_username, reason: not valid java name */
    public final String m80deprecated_username() {
        return this.username;
    }

    public final String encodedFragment() {
        if (this.fragment == null) {
            return null;
        }
        String strSubstring = this.url.substring(k.I0(this.url, '#', 0, false, 6) + 1);
        q0.g(strSubstring, "this as java.lang.String).substring(startIndex)");
        return strSubstring;
    }

    public final String encodedPassword() {
        if (this.password.length() == 0) {
            return FRAGMENT_ENCODE_SET;
        }
        String strSubstring = this.url.substring(k.I0(this.url, ':', this.scheme.length() + 3, false, 4) + 1, k.I0(this.url, '@', 0, false, 6));
        q0.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final String encodedPath() {
        int iI0 = k.I0(this.url, '/', this.scheme.length() + 3, false, 4);
        String str = this.url;
        String strSubstring = this.url.substring(iI0, Util.delimiterOffset(str, "?#", iI0, str.length()));
        q0.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final List<String> encodedPathSegments() {
        int iI0 = k.I0(this.url, '/', this.scheme.length() + 3, false, 4);
        String str = this.url;
        int iDelimiterOffset = Util.delimiterOffset(str, "?#", iI0, str.length());
        ArrayList arrayList = new ArrayList();
        while (iI0 < iDelimiterOffset) {
            int i8 = iI0 + 1;
            int iDelimiterOffset2 = Util.delimiterOffset(this.url, '/', i8, iDelimiterOffset);
            String strSubstring = this.url.substring(i8, iDelimiterOffset2);
            q0.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            arrayList.add(strSubstring);
            iI0 = iDelimiterOffset2;
        }
        return arrayList;
    }

    public final String encodedQuery() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        int iI0 = k.I0(this.url, '?', 0, false, 6) + 1;
        String str = this.url;
        String strSubstring = this.url.substring(iI0, Util.delimiterOffset(str, '#', iI0, str.length()));
        q0.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final String encodedUsername() {
        if (this.username.length() == 0) {
            return FRAGMENT_ENCODE_SET;
        }
        int length = this.scheme.length() + 3;
        String str = this.url;
        String strSubstring = this.url.substring(length, Util.delimiterOffset(str, ":@", length, str.length()));
        q0.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public boolean equals(Object obj) {
        return (obj instanceof HttpUrl) && q0.c(((HttpUrl) obj).url, this.url);
    }

    public final String fragment() {
        return this.fragment;
    }

    public int hashCode() {
        return this.url.hashCode();
    }

    public final String host() {
        return this.host;
    }

    public final boolean isHttps() {
        return this.isHttps;
    }

    public final Builder newBuilder() {
        Builder builder = new Builder();
        builder.setScheme$okhttp(this.scheme);
        builder.setEncodedUsername$okhttp(encodedUsername());
        builder.setEncodedPassword$okhttp(encodedPassword());
        builder.setHost$okhttp(this.host);
        builder.setPort$okhttp(this.port != Companion.defaultPort(this.scheme) ? this.port : -1);
        builder.getEncodedPathSegments$okhttp().clear();
        builder.getEncodedPathSegments$okhttp().addAll(encodedPathSegments());
        builder.encodedQuery(encodedQuery());
        builder.setEncodedFragment$okhttp(encodedFragment());
        return builder;
    }

    public final String password() {
        return this.password;
    }

    public final List<String> pathSegments() {
        return this.pathSegments;
    }

    public final int pathSize() {
        return this.pathSegments.size();
    }

    public final int port() {
        return this.port;
    }

    public final String query() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Companion.toQueryString$okhttp(this.queryNamesAndValues, sb);
        return sb.toString();
    }

    public final String queryParameter(String str) {
        q0.h(str, "name");
        List<String> list = this.queryNamesAndValues;
        if (list == null) {
            return null;
        }
        F6.a aVarP = S3.e.p(S3.e.s(0, list.size()), 2);
        int i8 = aVarP.f3265G;
        int i9 = aVarP.f3266H;
        int i10 = aVarP.f3267I;
        if ((i10 > 0 && i8 <= i9) || (i10 < 0 && i9 <= i8)) {
            while (!q0.c(str, this.queryNamesAndValues.get(i8))) {
                if (i8 != i9) {
                    i8 += i10;
                }
            }
            return this.queryNamesAndValues.get(i8 + 1);
        }
        return null;
    }

    public final String queryParameterName(int i8) {
        List<String> list = this.queryNamesAndValues;
        if (list == null) {
            throw new IndexOutOfBoundsException();
        }
        String str = list.get(i8 * 2);
        q0.e(str);
        return str;
    }

    public final Set<String> queryParameterNames() {
        if (this.queryNamesAndValues == null) {
            return s.f30544G;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        F6.a aVarP = S3.e.p(S3.e.s(0, this.queryNamesAndValues.size()), 2);
        int i8 = aVarP.f3265G;
        int i9 = aVarP.f3266H;
        int i10 = aVarP.f3267I;
        if ((i10 > 0 && i8 <= i9) || (i10 < 0 && i9 <= i8)) {
            while (true) {
                String str = this.queryNamesAndValues.get(i8);
                q0.e(str);
                linkedHashSet.add(str);
                if (i8 == i9) {
                    break;
                }
                i8 += i10;
            }
        }
        Set<String> setUnmodifiableSet = Collections.unmodifiableSet(linkedHashSet);
        q0.g(setUnmodifiableSet, "unmodifiableSet(result)");
        return setUnmodifiableSet;
    }

    public final String queryParameterValue(int i8) {
        List<String> list = this.queryNamesAndValues;
        if (list != null) {
            return list.get((i8 * 2) + 1);
        }
        throw new IndexOutOfBoundsException();
    }

    public final List<String> queryParameterValues(String str) {
        q0.h(str, "name");
        if (this.queryNamesAndValues == null) {
            return q.f30542G;
        }
        ArrayList arrayList = new ArrayList();
        F6.a aVarP = S3.e.p(S3.e.s(0, this.queryNamesAndValues.size()), 2);
        int i8 = aVarP.f3265G;
        int i9 = aVarP.f3266H;
        int i10 = aVarP.f3267I;
        if ((i10 > 0 && i8 <= i9) || (i10 < 0 && i9 <= i8)) {
            while (true) {
                if (q0.c(str, this.queryNamesAndValues.get(i8))) {
                    arrayList.add(this.queryNamesAndValues.get(i8 + 1));
                }
                if (i8 == i9) {
                    break;
                }
                i8 += i10;
            }
        }
        List<String> listUnmodifiableList = Collections.unmodifiableList(arrayList);
        q0.g(listUnmodifiableList, "unmodifiableList(result)");
        return listUnmodifiableList;
    }

    public final int querySize() {
        List<String> list = this.queryNamesAndValues;
        if (list != null) {
            return list.size() / 2;
        }
        return 0;
    }

    public final String redact() {
        Builder builderNewBuilder = newBuilder("/...");
        q0.e(builderNewBuilder);
        return builderNewBuilder.username(FRAGMENT_ENCODE_SET).password(FRAGMENT_ENCODE_SET).build().toString();
    }

    public final HttpUrl resolve(String str) {
        q0.h(str, "link");
        Builder builderNewBuilder = newBuilder(str);
        if (builderNewBuilder != null) {
            return builderNewBuilder.build();
        }
        return null;
    }

    public final String scheme() {
        return this.scheme;
    }

    public String toString() {
        return this.url;
    }

    public final String topPrivateDomain() {
        if (Util.canParseAsIpAddress(this.host)) {
            return null;
        }
        return PublicSuffixDatabase.Companion.get().getEffectiveTldPlusOne(this.host);
    }

    public final URI uri() {
        String string = newBuilder().reencodeForUri$okhttp().toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e8) {
            try {
                Pattern patternCompile = Pattern.compile("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]");
                q0.g(patternCompile, "compile(...)");
                q0.h(string, "input");
                String strReplaceAll = patternCompile.matcher(string).replaceAll(FRAGMENT_ENCODE_SET);
                q0.g(strReplaceAll, "replaceAll(...)");
                URI uriCreate = URI.create(strReplaceAll);
                q0.g(uriCreate, "{\n      // Unlikely edge…Unexpected!\n      }\n    }");
                return uriCreate;
            } catch (Exception unused) {
                throw new RuntimeException(e8);
            }
        }
    }

    public final URL url() {
        try {
            return new URL(this.url);
        } catch (MalformedURLException e8) {
            throw new RuntimeException(e8);
        }
    }

    public final String username() {
        return this.username;
    }

    public static final HttpUrl get(URI uri) {
        return Companion.get(uri);
    }

    public static final HttpUrl get(URL url) {
        return Companion.get(url);
    }

    public final Builder newBuilder(String str) {
        q0.h(str, "link");
        try {
            return new Builder().parse$okhttp(this, str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }
}
