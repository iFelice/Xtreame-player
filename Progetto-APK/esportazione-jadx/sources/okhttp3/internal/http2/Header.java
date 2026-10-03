package okhttp3.internal.http2;

import D6.e;
import F2.G;
import Q6.m;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class Header {
    public static final Companion Companion = new Companion(null);
    public static final m PSEUDO_PREFIX;
    public static final m RESPONSE_STATUS;
    public static final String RESPONSE_STATUS_UTF8 = ":status";
    public static final m TARGET_AUTHORITY;
    public static final String TARGET_AUTHORITY_UTF8 = ":authority";
    public static final m TARGET_METHOD;
    public static final String TARGET_METHOD_UTF8 = ":method";
    public static final m TARGET_PATH;
    public static final String TARGET_PATH_UTF8 = ":path";
    public static final m TARGET_SCHEME;
    public static final String TARGET_SCHEME_UTF8 = ":scheme";
    public final int hpackSize;
    public final m name;
    public final m value;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }
    }

    static {
        m mVar = m.f6065J;
        PSEUDO_PREFIX = G.C(":");
        RESPONSE_STATUS = G.C(RESPONSE_STATUS_UTF8);
        TARGET_METHOD = G.C(TARGET_METHOD_UTF8);
        TARGET_PATH = G.C(TARGET_PATH_UTF8);
        TARGET_SCHEME = G.C(TARGET_SCHEME_UTF8);
        TARGET_AUTHORITY = G.C(TARGET_AUTHORITY_UTF8);
    }

    public Header(m mVar, m mVar2) {
        q0.h(mVar, "name");
        q0.h(mVar2, "value");
        this.name = mVar;
        this.value = mVar2;
        this.hpackSize = mVar2.c() + mVar.c() + 32;
    }

    public static /* synthetic */ Header copy$default(Header header, m mVar, m mVar2, int i8, Object obj) {
        if ((i8 & 1) != 0) {
            mVar = header.name;
        }
        if ((i8 & 2) != 0) {
            mVar2 = header.value;
        }
        return header.copy(mVar, mVar2);
    }

    public final m component1() {
        return this.name;
    }

    public final m component2() {
        return this.value;
    }

    public final Header copy(m mVar, m mVar2) {
        q0.h(mVar, "name");
        q0.h(mVar2, "value");
        return new Header(mVar, mVar2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Header)) {
            return false;
        }
        Header header = (Header) obj;
        return q0.c(this.name, header.name) && q0.c(this.value, header.value);
    }

    public int hashCode() {
        return this.value.hashCode() + (this.name.hashCode() * 31);
    }

    public String toString() {
        return this.name.k() + ": " + this.value.k();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(m mVar, String str) {
        this(mVar, G.C(str));
        q0.h(mVar, "name");
        q0.h(str, "value");
        m mVar2 = m.f6065J;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(String str, String str2) {
        this(G.C(str), G.C(str2));
        q0.h(str, "name");
        q0.h(str2, "value");
        m mVar = m.f6065J;
    }
}
