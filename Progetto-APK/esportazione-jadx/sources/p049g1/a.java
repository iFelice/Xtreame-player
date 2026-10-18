package p049g1;

import java.util.Arrays;
import java.util.Objects;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.K;
import p094m0.M;
import p094m0.O;

/* JADX INFO: loaded from: classes.dex */
public final class a implements M {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final C3136t f25297g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final C3136t f25298h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f25299a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f25300b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f25301c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f25302d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f25303e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f25304f;

    static {
        C3135s c3135s = new C3135s();
        c3135s.f26996n = O.p("application/id3");
        f25297g = c3135s.a();
        C3135s c3135s2 = new C3135s();
        c3135s2.f26996n = O.p("application/x-scte35");
        f25298h = c3135s2.a();
    }

    public a(String str, String str2, long j8, long j9, byte[] bArr) {
        this.f25299a = str;
        this.f25300b = str2;
        this.f25301c = j8;
        this.f25302d = j9;
        this.f25303e = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f25301c == aVar.f25301c && this.f25302d == aVar.f25302d && Objects.equals(this.f25299a, aVar.f25299a) && Objects.equals(this.f25300b, aVar.f25300b) && Arrays.equals(this.f25303e, aVar.f25303e);
    }

    @Override // p094m0.M
    public final byte[] getWrappedMetadataBytes() {
        if (getWrappedMetadataFormat() != null) {
            return this.f25303e;
        }
        return null;
    }

    @Override // p094m0.M
    public final C3136t getWrappedMetadataFormat() {
        String str = this.f25299a;
        str.getClass();
        switch (str) {
            case "urn:scte:scte35:2014:bin":
                return f25298h;
            case "https://aomedia.org/emsg/ID3":
            case "https://developer.apple.com/streaming/emsg-id3":
                return f25297g;
            default:
                return null;
        }
    }

    public final int hashCode() {
        if (this.f25304f == 0) {
            String str = this.f25299a;
            int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.f25300b;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            long j8 = this.f25301c;
            int i8 = (iHashCode2 + ((int) (j8 ^ (j8 >>> 32)))) * 31;
            long j9 = this.f25302d;
            this.f25304f = Arrays.hashCode(this.f25303e) + ((i8 + ((int) (j9 ^ (j9 >>> 32)))) * 31);
        }
        return this.f25304f;
    }

    public final String toString() {
        return "EMSG: scheme=" + this.f25299a + ", id=" + this.f25302d + ", durationMs=" + this.f25301c + ", value=" + this.f25300b;
    }

    @Override // p094m0.M
    public final /* synthetic */ void populateMediaMetadata(K k8) {
    }
}
