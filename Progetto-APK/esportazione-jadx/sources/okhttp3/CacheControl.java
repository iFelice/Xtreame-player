package okhttp3;

import D6.e;
import I6.k;
import com.google.android.gms.common.api.d;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.Util;
import p000a.r;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class CacheControl {
    private String headerValue;
    private final boolean immutable;
    private final boolean isPrivate;
    private final boolean isPublic;
    private final int maxAgeSeconds;
    private final int maxStaleSeconds;
    private final int minFreshSeconds;
    private final boolean mustRevalidate;
    private final boolean noCache;
    private final boolean noStore;
    private final boolean noTransform;
    private final boolean onlyIfCached;
    private final int sMaxAgeSeconds;
    public static final Companion Companion = new Companion(null);
    public static final CacheControl FORCE_NETWORK = new Builder().noCache().build();
    public static final CacheControl FORCE_CACHE = new Builder().onlyIfCached().maxStale(d.API_PRIORITY_OTHER, TimeUnit.SECONDS).build();

    public static final class Builder {
        private boolean immutable;
        private int maxAgeSeconds = -1;
        private int maxStaleSeconds = -1;
        private int minFreshSeconds = -1;
        private boolean noCache;
        private boolean noStore;
        private boolean noTransform;
        private boolean onlyIfCached;

        private final int clampToInt(long j8) {
            return j8 > 2147483647L ? d.API_PRIORITY_OTHER : (int) j8;
        }

        public final CacheControl build() {
            return new CacheControl(this.noCache, this.noStore, this.maxAgeSeconds, -1, false, false, false, this.maxStaleSeconds, this.minFreshSeconds, this.onlyIfCached, this.noTransform, this.immutable, null, null);
        }

        public final Builder immutable() {
            this.immutable = true;
            return this;
        }

        public final Builder maxAge(int i8, TimeUnit timeUnit) {
            q0.h(timeUnit, "timeUnit");
            if (i8 < 0) {
                throw new IllegalArgumentException(r.f("maxAge < 0: ", i8).toString());
            }
            this.maxAgeSeconds = clampToInt(timeUnit.toSeconds(i8));
            return this;
        }

        public final Builder maxStale(int i8, TimeUnit timeUnit) {
            q0.h(timeUnit, "timeUnit");
            if (i8 < 0) {
                throw new IllegalArgumentException(r.f("maxStale < 0: ", i8).toString());
            }
            this.maxStaleSeconds = clampToInt(timeUnit.toSeconds(i8));
            return this;
        }

        public final Builder minFresh(int i8, TimeUnit timeUnit) {
            q0.h(timeUnit, "timeUnit");
            if (i8 < 0) {
                throw new IllegalArgumentException(r.f("minFresh < 0: ", i8).toString());
            }
            this.minFreshSeconds = clampToInt(timeUnit.toSeconds(i8));
            return this;
        }

        public final Builder noCache() {
            this.noCache = true;
            return this;
        }

        public final Builder noStore() {
            this.noStore = true;
            return this;
        }

        public final Builder noTransform() {
            this.noTransform = true;
            return this;
        }

        public final Builder onlyIfCached() {
            this.onlyIfCached = true;
            return this;
        }
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }

        private final int indexOfElement(String str, String str2, int i8) {
            int length = str.length();
            while (i8 < length) {
                if (k.C0(str2, str.charAt(i8))) {
                    return i8;
                }
                i8++;
            }
            return str.length();
        }

        public static /* synthetic */ int indexOfElement$default(Companion companion, String str, String str2, int i8, int i9, Object obj) {
            if ((i9 & 2) != 0) {
                i8 = 0;
            }
            return companion.indexOfElement(str, str2, i8);
        }

        /* JADX WARN: Code duplicated, block: B:15:0x004a  */
        /* JADX WARN: Code duplicated, block: B:17:0x0067  */
        /* JADX WARN: Code duplicated, block: B:28:0x00c4  */
        /* JADX WARN: Code duplicated, block: B:40:0x0105  */
        /* JADX WARN: Code duplicated, block: B:43:0x0113  */
        /* JADX WARN: Code duplicated, block: B:55:0x015a  */
        /* JADX WARN: Code duplicated, block: B:58:0x0168  */
        /* JADX WARN: Code duplicated, block: B:80:0x00dd A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:81:0x00ef A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:82:0x00d3 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:83:0x0197 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:84:0x00e5 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:85:0x011b A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:86:0x012d A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:87:0x013f A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:88:0x0171 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:89:0x0184 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:90:0x00fc A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:91:0x00f7 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:92:0x010e A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:93:0x0152 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:94:0x0162 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:95:0x018f A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:96:0x017c A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:97:0x014a A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:98:0x0137 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:99:0x0125 A[SYNTHETIC] */
        public final CacheControl parse(Headers headers) {
            int i8;
            String str;
            int iIndexOfElement;
            int iIndexOfElement2;
            String string;
            String string2;
            Headers headers2 = headers;
            q0.h(headers2, "headers");
            int size = headers.size();
            int i9 = 0;
            boolean z7 = true;
            String str2 = null;
            boolean z8 = false;
            boolean z9 = false;
            int nonNegativeInt = -1;
            int nonNegativeInt2 = -1;
            boolean z10 = false;
            boolean z11 = false;
            boolean z12 = false;
            int nonNegativeInt3 = -1;
            int nonNegativeInt4 = -1;
            boolean z13 = false;
            boolean z14 = false;
            boolean z15 = false;
            while (i9 < size) {
                String strName = headers2.name(i9);
                String strValue = headers2.value(i9);
                if (k.F0(strName, "Cache-Control")) {
                    if (str2 == null) {
                        str2 = strValue;
                    }
                    iIndexOfElement = 0;
                    while (iIndexOfElement < strValue.length()) {
                        iIndexOfElement2 = indexOfElement(strValue, "=,;", iIndexOfElement);
                        String strSubstring = strValue.substring(iIndexOfElement, iIndexOfElement2);
                        q0.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                        string = k.X0(strSubstring).toString();
                        if (iIndexOfElement2 != strValue.length()) {
                            size = size;
                            if (strValue.charAt(iIndexOfElement2) == ',' && strValue.charAt(iIndexOfElement2) != ';') {
                                int iIndexOfNonWhitespace = Util.indexOfNonWhitespace(strValue, iIndexOfElement2 + 1);
                                if (iIndexOfNonWhitespace >= strValue.length() || strValue.charAt(iIndexOfNonWhitespace) != '\"') {
                                    iIndexOfElement = indexOfElement(strValue, ",;", iIndexOfNonWhitespace);
                                    String strSubstring2 = strValue.substring(iIndexOfNonWhitespace, iIndexOfElement);
                                    q0.g(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                                    string2 = k.X0(strSubstring2).toString();
                                } else {
                                    int i10 = iIndexOfNonWhitespace + 1;
                                    int iI0 = k.I0(strValue, '\"', i10, false, 4);
                                    string2 = strValue.substring(i10, iI0);
                                    q0.g(string2, "this as java.lang.String…ing(startIndex, endIndex)");
                                    iIndexOfElement = iI0 + 1;
                                }
                            }
                            if (k.F0("no-cache", string)) {
                                z8 = true;
                            } else if (k.F0("no-store", string)) {
                                z9 = true;
                            } else if (k.F0("max-age", string)) {
                                nonNegativeInt = Util.toNonNegativeInt(string2, -1);
                            } else if (k.F0("s-maxage", string)) {
                                nonNegativeInt2 = Util.toNonNegativeInt(string2, -1);
                            } else if (k.F0("private", string)) {
                                z10 = true;
                            } else if (k.F0("public", string)) {
                                z11 = true;
                            } else if (k.F0("must-revalidate", string)) {
                                z12 = true;
                            } else if (k.F0("max-stale", string)) {
                                nonNegativeInt3 = Util.toNonNegativeInt(string2, d.API_PRIORITY_OTHER);
                            } else if (k.F0("min-fresh", string)) {
                                nonNegativeInt4 = Util.toNonNegativeInt(string2, -1);
                            } else if (k.F0("only-if-cached", string)) {
                                z13 = true;
                            } else if (k.F0("no-transform", string)) {
                                z14 = true;
                            } else if (k.F0("immutable", string)) {
                                z15 = true;
                            }
                        } else {
                            size = size;
                        }
                        iIndexOfElement = iIndexOfElement2 + 1;
                        string2 = null;
                        if (k.F0("no-cache", string)) {
                            z8 = true;
                        } else if (k.F0("no-store", string)) {
                            z9 = true;
                        } else if (k.F0("max-age", string)) {
                            nonNegativeInt = Util.toNonNegativeInt(string2, -1);
                        } else if (k.F0("s-maxage", string)) {
                            nonNegativeInt2 = Util.toNonNegativeInt(string2, -1);
                        } else if (k.F0("private", string)) {
                            z10 = true;
                        } else if (k.F0("public", string)) {
                            z11 = true;
                        } else if (k.F0("must-revalidate", string)) {
                            z12 = true;
                        } else if (k.F0("max-stale", string)) {
                            nonNegativeInt3 = Util.toNonNegativeInt(string2, d.API_PRIORITY_OTHER);
                        } else if (k.F0("min-fresh", string)) {
                            nonNegativeInt4 = Util.toNonNegativeInt(string2, -1);
                        } else if (k.F0("only-if-cached", string)) {
                            z13 = true;
                        } else if (k.F0("no-transform", string)) {
                            z14 = true;
                        } else if (k.F0("immutable", string)) {
                            z15 = true;
                        }
                    }
                    i8 = size;
                    str = str2;
                    i9++;
                    headers2 = headers;
                    str2 = str;
                    size = i8;
                } else {
                    if (!k.F0(strName, "Pragma")) {
                        i8 = size;
                        str = str2;
                    }
                    i9++;
                    headers2 = headers;
                    str2 = str;
                    size = i8;
                }
                z7 = false;
                iIndexOfElement = 0;
                while (iIndexOfElement < strValue.length()) {
                    iIndexOfElement2 = indexOfElement(strValue, "=,;", iIndexOfElement);
                    String strSubstring3 = strValue.substring(iIndexOfElement, iIndexOfElement2);
                    q0.g(strSubstring3, "this as java.lang.String…ing(startIndex, endIndex)");
                    string = k.X0(strSubstring3).toString();
                    if (iIndexOfElement2 != strValue.length()) {
                        size = size;
                        if (strValue.charAt(iIndexOfElement2) == ',') {
                        }
                        if (k.F0("no-cache", string)) {
                            z8 = true;
                        } else if (k.F0("no-store", string)) {
                            z9 = true;
                        } else if (k.F0("max-age", string)) {
                            nonNegativeInt = Util.toNonNegativeInt(string2, -1);
                        } else if (k.F0("s-maxage", string)) {
                            nonNegativeInt2 = Util.toNonNegativeInt(string2, -1);
                        } else if (k.F0("private", string)) {
                            z10 = true;
                        } else if (k.F0("public", string)) {
                            z11 = true;
                        } else if (k.F0("must-revalidate", string)) {
                            z12 = true;
                        } else if (k.F0("max-stale", string)) {
                            nonNegativeInt3 = Util.toNonNegativeInt(string2, d.API_PRIORITY_OTHER);
                        } else if (k.F0("min-fresh", string)) {
                            nonNegativeInt4 = Util.toNonNegativeInt(string2, -1);
                        } else if (k.F0("only-if-cached", string)) {
                            z13 = true;
                        } else if (k.F0("no-transform", string)) {
                            z14 = true;
                        } else if (k.F0("immutable", string)) {
                            z15 = true;
                        }
                    } else {
                        size = size;
                    }
                    iIndexOfElement = iIndexOfElement2 + 1;
                    string2 = null;
                    if (k.F0("no-cache", string)) {
                        z8 = true;
                    } else if (k.F0("no-store", string)) {
                        z9 = true;
                    } else if (k.F0("max-age", string)) {
                        nonNegativeInt = Util.toNonNegativeInt(string2, -1);
                    } else if (k.F0("s-maxage", string)) {
                        nonNegativeInt2 = Util.toNonNegativeInt(string2, -1);
                    } else if (k.F0("private", string)) {
                        z10 = true;
                    } else if (k.F0("public", string)) {
                        z11 = true;
                    } else if (k.F0("must-revalidate", string)) {
                        z12 = true;
                    } else if (k.F0("max-stale", string)) {
                        nonNegativeInt3 = Util.toNonNegativeInt(string2, d.API_PRIORITY_OTHER);
                    } else if (k.F0("min-fresh", string)) {
                        nonNegativeInt4 = Util.toNonNegativeInt(string2, -1);
                    } else if (k.F0("only-if-cached", string)) {
                        z13 = true;
                    } else if (k.F0("no-transform", string)) {
                        z14 = true;
                    } else if (k.F0("immutable", string)) {
                        z15 = true;
                    }
                }
                i8 = size;
                str = str2;
                i9++;
                headers2 = headers;
                str2 = str;
                size = i8;
            }
            return new CacheControl(z8, z9, nonNegativeInt, nonNegativeInt2, z10, z11, z12, nonNegativeInt3, nonNegativeInt4, z13, z14, z15, !z7 ? null : str2, null);
        }
    }

    public /* synthetic */ CacheControl(boolean z7, boolean z8, int i8, int i9, boolean z9, boolean z10, boolean z11, int i10, int i11, boolean z12, boolean z13, boolean z14, String str, e eVar) {
        this(z7, z8, i8, i9, z9, z10, z11, i10, i11, z12, z13, z14, str);
    }

    public static final CacheControl parse(Headers headers) {
        return Companion.parse(headers);
    }

    /* JADX INFO: renamed from: -deprecated_immutable, reason: not valid java name */
    public final boolean m23deprecated_immutable() {
        return this.immutable;
    }

    /* JADX INFO: renamed from: -deprecated_maxAgeSeconds, reason: not valid java name */
    public final int m24deprecated_maxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    /* JADX INFO: renamed from: -deprecated_maxStaleSeconds, reason: not valid java name */
    public final int m25deprecated_maxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    /* JADX INFO: renamed from: -deprecated_minFreshSeconds, reason: not valid java name */
    public final int m26deprecated_minFreshSeconds() {
        return this.minFreshSeconds;
    }

    /* JADX INFO: renamed from: -deprecated_mustRevalidate, reason: not valid java name */
    public final boolean m27deprecated_mustRevalidate() {
        return this.mustRevalidate;
    }

    /* JADX INFO: renamed from: -deprecated_noCache, reason: not valid java name */
    public final boolean m28deprecated_noCache() {
        return this.noCache;
    }

    /* JADX INFO: renamed from: -deprecated_noStore, reason: not valid java name */
    public final boolean m29deprecated_noStore() {
        return this.noStore;
    }

    /* JADX INFO: renamed from: -deprecated_noTransform, reason: not valid java name */
    public final boolean m30deprecated_noTransform() {
        return this.noTransform;
    }

    /* JADX INFO: renamed from: -deprecated_onlyIfCached, reason: not valid java name */
    public final boolean m31deprecated_onlyIfCached() {
        return this.onlyIfCached;
    }

    /* JADX INFO: renamed from: -deprecated_sMaxAgeSeconds, reason: not valid java name */
    public final int m32deprecated_sMaxAgeSeconds() {
        return this.sMaxAgeSeconds;
    }

    public final boolean immutable() {
        return this.immutable;
    }

    public final boolean isPrivate() {
        return this.isPrivate;
    }

    public final boolean isPublic() {
        return this.isPublic;
    }

    public final int maxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public final int maxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    public final int minFreshSeconds() {
        return this.minFreshSeconds;
    }

    public final boolean mustRevalidate() {
        return this.mustRevalidate;
    }

    public final boolean noCache() {
        return this.noCache;
    }

    public final boolean noStore() {
        return this.noStore;
    }

    public final boolean noTransform() {
        return this.noTransform;
    }

    public final boolean onlyIfCached() {
        return this.onlyIfCached;
    }

    public final int sMaxAgeSeconds() {
        return this.sMaxAgeSeconds;
    }

    public String toString() {
        String str = this.headerValue;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        if (this.noCache) {
            sb.append("no-cache, ");
        }
        if (this.noStore) {
            sb.append("no-store, ");
        }
        if (this.maxAgeSeconds != -1) {
            sb.append("max-age=");
            sb.append(this.maxAgeSeconds);
            sb.append(", ");
        }
        if (this.sMaxAgeSeconds != -1) {
            sb.append("s-maxage=");
            sb.append(this.sMaxAgeSeconds);
            sb.append(", ");
        }
        if (this.isPrivate) {
            sb.append("private, ");
        }
        if (this.isPublic) {
            sb.append("public, ");
        }
        if (this.mustRevalidate) {
            sb.append("must-revalidate, ");
        }
        if (this.maxStaleSeconds != -1) {
            sb.append("max-stale=");
            sb.append(this.maxStaleSeconds);
            sb.append(", ");
        }
        if (this.minFreshSeconds != -1) {
            sb.append("min-fresh=");
            sb.append(this.minFreshSeconds);
            sb.append(", ");
        }
        if (this.onlyIfCached) {
            sb.append("only-if-cached, ");
        }
        if (this.noTransform) {
            sb.append("no-transform, ");
        }
        if (this.immutable) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        sb.delete(sb.length() - 2, sb.length());
        String string = sb.toString();
        q0.g(string, "StringBuilder().apply(builderAction).toString()");
        this.headerValue = string;
        return string;
    }

    private CacheControl(boolean z7, boolean z8, int i8, int i9, boolean z9, boolean z10, boolean z11, int i10, int i11, boolean z12, boolean z13, boolean z14, String str) {
        this.noCache = z7;
        this.noStore = z8;
        this.maxAgeSeconds = i8;
        this.sMaxAgeSeconds = i9;
        this.isPrivate = z9;
        this.isPublic = z10;
        this.mustRevalidate = z11;
        this.maxStaleSeconds = i10;
        this.minFreshSeconds = i11;
        this.onlyIfCached = z12;
        this.noTransform = z13;
        this.immutable = z14;
        this.headerValue = str;
    }
}
