package okhttp3.internal.http;

import F2.G;
import I6.a;
import I6.k;
import Q6.j;
import Q6.m;
import com.google.protobuf.U2;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okhttp3.Challenge;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import p162u6.r;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class HttpHeaders {
    private static final m QUOTED_STRING_DELIMITERS;
    private static final m TOKEN_DELIMITERS;

    static {
        m mVar = m.f6065J;
        QUOTED_STRING_DELIMITERS = G.C("\"\\");
        TOKEN_DELIMITERS = G.C("\t ,=");
    }

    public static final boolean hasBody(Response response) {
        q0.h(response, "response");
        return promisesBody(response);
    }

    public static final List<Challenge> parseChallenges(Headers headers, String str) {
        q0.h(headers, "<this>");
        q0.h(str, "headerName");
        ArrayList arrayList = new ArrayList();
        int size = headers.size();
        for (int i8 = 0; i8 < size; i8++) {
            if (k.F0(str, headers.name(i8))) {
                j jVar = new j();
                jVar.w0(headers.value(i8));
                try {
                    readChallengeHeader(jVar, arrayList);
                } catch (EOFException e8) {
                    Platform.Companion.get().log("Unable to parse challenge", 5, e8);
                }
            }
        }
        return arrayList;
    }

    public static final boolean promisesBody(Response response) {
        q0.h(response, "<this>");
        if (q0.c(response.request().method(), "HEAD")) {
            return false;
        }
        int iCode = response.code();
        return (((iCode >= 100 && iCode < 200) || iCode == 204 || iCode == 304) && Util.headersContentLength(response) == -1 && !k.F0("chunked", Response.header$default(response, "Transfer-Encoding", null, 2, null))) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00de  */
    /* JADX WARN: Code duplicated, block: B:56:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:57:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:86:0x0114 A[EDGE_INSN: B:86:0x0114->B:69:0x0114 BREAK  A[LOOP:4: B:44:0x00cb->B:68:0x0112], SYNTHETIC] */
    private static final void readChallengeHeader(j jVar, List<Challenge> list) throws EOFException {
        String token;
        int iSkipAll;
        int i8;
        String token2;
        while (true) {
            String token3 = null;
            while (true) {
                if (token3 == null) {
                    skipCommasAndWhitespace(jVar);
                    token3 = readToken(jVar);
                    if (token3 == null) {
                        return;
                    }
                }
                boolean zSkipCommasAndWhitespace = skipCommasAndWhitespace(jVar);
                token = readToken(jVar);
                if (token == null) {
                    if (jVar.q()) {
                        list.add(new Challenge(token3, r.f30543G));
                        return;
                    }
                    return;
                }
                iSkipAll = Util.skipAll(jVar, (byte) 61);
                boolean zSkipCommasAndWhitespace2 = skipCommasAndWhitespace(jVar);
                i8 = 1;
                if (!zSkipCommasAndWhitespace && (zSkipCommasAndWhitespace2 || jVar.q())) {
                    break;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                int iSkipAll2 = Util.skipAll(jVar, (byte) 61) + iSkipAll;
                while (true) {
                    if (token == null) {
                        token = readToken(jVar);
                        if (skipCommasAndWhitespace(jVar)) {
                            break;
                        }
                        iSkipAll2 = Util.skipAll(jVar, (byte) 61);
                        if (iSkipAll2 != 0) {
                            break;
                        }
                        if (iSkipAll2 <= 1 || skipCommasAndWhitespace(jVar)) {
                            return;
                        }
                        if (startsWith(jVar, (byte) 34)) {
                            token2 = readQuotedString(jVar);
                        } else {
                            token2 = readToken(jVar);
                        }
                        if (token2 != null || ((String) linkedHashMap.put(token, token2)) != null) {
                            return;
                        }
                        if (skipCommasAndWhitespace(jVar) && !jVar.q()) {
                            return;
                        } else {
                            token = null;
                        }
                    } else {
                        if (iSkipAll2 != 0) {
                            break;
                            break;
                        }
                        if (iSkipAll2 <= 1) {
                            return;
                        }
                        if (startsWith(jVar, (byte) 34)) {
                            token2 = readQuotedString(jVar);
                        } else {
                            token2 = readToken(jVar);
                        }
                        if (token2 != null) {
                            return;
                        }
                        if (skipCommasAndWhitespace(jVar)) {
                        }
                        token = null;
                    }
                }
                list.add(new Challenge(token3, linkedHashMap));
                token3 = token;
            }
            StringBuilder sbO = U2.o(token);
            if (iSkipAll < 0) {
                throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + iSkipAll + '.').toString());
            }
            String string = HttpUrl.FRAGMENT_ENCODE_SET;
            if (iSkipAll != 0) {
                if (iSkipAll != 1) {
                    int length = "=".length();
                    if (length != 0) {
                        if (length != 1) {
                            StringBuilder sb = new StringBuilder("=".length() * iSkipAll);
                            if (1 <= iSkipAll) {
                                while (true) {
                                    sb.append((CharSequence) "=");
                                    if (i8 == iSkipAll) {
                                        break;
                                    } else {
                                        i8++;
                                    }
                                }
                            }
                            string = sb.toString();
                            q0.e(string);
                        } else {
                            char cCharAt = "=".charAt(0);
                            char[] cArr = new char[iSkipAll];
                            for (int i9 = 0; i9 < iSkipAll; i9++) {
                                cArr[i9] = cCharAt;
                            }
                            string = new String(cArr);
                        }
                    }
                } else {
                    string = "=".toString();
                }
            }
            sbO.append(string);
            Map mapSingletonMap = Collections.singletonMap(null, sbO.toString());
            q0.g(mapSingletonMap, "singletonMap<String, Str…ek + \"=\".repeat(eqCount))");
            list.add(new Challenge(token3, (Map<String, String>) mapSingletonMap));
        }
    }

    private static final String readQuotedString(j jVar) throws EOFException {
        if (jVar.readByte() != 34) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        j jVar2 = new j();
        while (true) {
            long jC0 = jVar.c0(QUOTED_STRING_DELIMITERS);
            if (jC0 == -1) {
                return null;
            }
            if (jVar.a0(jC0) == 34) {
                jVar2.write(jVar, jC0);
                jVar.readByte();
                return jVar2.h0();
            }
            if (jVar.f6064H == jC0 + 1) {
                return null;
            }
            jVar2.write(jVar, jC0);
            jVar.readByte();
            jVar2.write(jVar, 1L);
        }
    }

    private static final String readToken(j jVar) {
        long jC0 = jVar.c0(TOKEN_DELIMITERS);
        if (jC0 == -1) {
            jC0 = jVar.f6064H;
        }
        if (jC0 != 0) {
            return jVar.g0(jC0, a.f4021a);
        }
        return null;
    }

    public static final void receiveHeaders(CookieJar cookieJar, HttpUrl httpUrl, Headers headers) {
        q0.h(cookieJar, "<this>");
        q0.h(httpUrl, "url");
        q0.h(headers, "headers");
        if (cookieJar == CookieJar.NO_COOKIES) {
            return;
        }
        List<Cookie> all = Cookie.Companion.parseAll(httpUrl, headers);
        if (all.isEmpty()) {
            return;
        }
        cookieJar.saveFromResponse(httpUrl, all);
    }

    private static final boolean skipCommasAndWhitespace(j jVar) throws EOFException {
        boolean z7 = false;
        while (!jVar.q()) {
            byte bA0 = jVar.a0(0L);
            if (bA0 == 44) {
                jVar.readByte();
                z7 = true;
            } else {
                if (bA0 != 32 && bA0 != 9) {
                    break;
                }
                jVar.readByte();
            }
        }
        return z7;
    }

    private static final boolean startsWith(j jVar, byte b8) {
        return !jVar.q() && jVar.a0(0L) == b8;
    }
}
