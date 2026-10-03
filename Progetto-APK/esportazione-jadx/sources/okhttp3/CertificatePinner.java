package okhttp3;

import D6.e;
import D6.h;
import F2.G;
import I6.k;
import Q6.m;
import com.google.protobuf.U2;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.tls.CertificateChainCleaner;
import p027d2.v;
import p162u6.o;
import p162u6.q;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class CertificatePinner {
    public static final Companion Companion = new Companion(null);
    public static final CertificatePinner DEFAULT = new Builder().build();
    private final CertificateChainCleaner certificateChainCleaner;
    private final Set<Pin> pins;

    public static final class Builder {
        private final List<Pin> pins = new ArrayList();

        public final Builder add(String str, String... strArr) {
            q0.h(str, "pattern");
            q0.h(strArr, "pins");
            for (String str2 : strArr) {
                this.pins.add(new Pin(str, str2));
            }
            return this;
        }

        public final CertificatePinner build() {
            return new CertificatePinner(o.D(this.pins), null, 2, 0 == true ? 1 : 0);
        }

        public final List<Pin> getPins() {
            return this.pins;
        }
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }

        public final String pin(Certificate certificate) {
            q0.h(certificate, "certificate");
            if (!(certificate instanceof X509Certificate)) {
                throw new IllegalArgumentException("Certificate pinning requires X509 certificates".toString());
            }
            return "sha256/" + sha256Hash((X509Certificate) certificate).a();
        }

        public final m sha1Hash(X509Certificate x509Certificate) {
            q0.h(x509Certificate, "<this>");
            m mVar = m.f6065J;
            byte[] encoded = x509Certificate.getPublicKey().getEncoded();
            q0.g(encoded, "publicKey.encoded");
            return G.I(encoded).b("SHA-1");
        }

        public final m sha256Hash(X509Certificate x509Certificate) {
            q0.h(x509Certificate, "<this>");
            m mVar = m.f6065J;
            byte[] encoded = x509Certificate.getPublicKey().getEncoded();
            q0.g(encoded, "publicKey.encoded");
            return G.I(encoded).b("SHA-256");
        }
    }

    public static final class Pin {
        private final m hash;
        private final String hashAlgorithm;
        private final String pattern;

        public Pin(String str, String str2) {
            q0.h(str, "pattern");
            q0.h(str2, "pin");
            if ((!k.U0(str, "*.", false) || k.J0(str, "*", 1, false, 4) != -1) && ((!k.U0(str, "**.", false) || k.J0(str, "*", 2, false, 4) != -1) && k.J0(str, "*", 0, false, 6) != -1)) {
                throw new IllegalArgumentException("Unexpected pattern: ".concat(str).toString());
            }
            String canonicalHost = HostnamesKt.toCanonicalHost(str);
            if (canonicalHost == null) {
                throw new IllegalArgumentException("Invalid pattern: ".concat(str));
            }
            this.pattern = canonicalHost;
            if (k.U0(str2, "sha1/", false)) {
                this.hashAlgorithm = "sha1";
                m mVar = m.f6065J;
                String strSubstring = str2.substring(5);
                q0.g(strSubstring, "this as java.lang.String).substring(startIndex)");
                m mVarY = G.y(strSubstring);
                if (mVarY == null) {
                    throw new IllegalArgumentException("Invalid pin hash: ".concat(str2));
                }
                this.hash = mVarY;
                return;
            }
            if (!k.U0(str2, "sha256/", false)) {
                throw new IllegalArgumentException("pins must start with 'sha256/' or 'sha1/': ".concat(str2));
            }
            this.hashAlgorithm = "sha256";
            m mVar2 = m.f6065J;
            String strSubstring2 = str2.substring(7);
            q0.g(strSubstring2, "this as java.lang.String).substring(startIndex)");
            m mVarY2 = G.y(strSubstring2);
            if (mVarY2 == null) {
                throw new IllegalArgumentException("Invalid pin hash: ".concat(str2));
            }
            this.hash = mVarY2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Pin)) {
                return false;
            }
            Pin pin = (Pin) obj;
            return q0.c(this.pattern, pin.pattern) && q0.c(this.hashAlgorithm, pin.hashAlgorithm) && q0.c(this.hash, pin.hash);
        }

        public final m getHash() {
            return this.hash;
        }

        public final String getHashAlgorithm() {
            return this.hashAlgorithm;
        }

        public final String getPattern() {
            return this.pattern;
        }

        public int hashCode() {
            return this.hash.hashCode() + U2.e(this.hashAlgorithm, this.pattern.hashCode() * 31, 31);
        }

        public final boolean matchesCertificate(X509Certificate x509Certificate) {
            q0.h(x509Certificate, "certificate");
            String str = this.hashAlgorithm;
            if (q0.c(str, "sha256")) {
                return q0.c(this.hash, CertificatePinner.Companion.sha256Hash(x509Certificate));
            }
            if (q0.c(str, "sha1")) {
                return q0.c(this.hash, CertificatePinner.Companion.sha1Hash(x509Certificate));
            }
            return false;
        }

        public final boolean matchesHostname(String str) {
            q0.h(str, "hostname");
            if (k.U0(this.pattern, "**.", false)) {
                int length = this.pattern.length() - 3;
                int length2 = str.length() - length;
                if (!k.N0(str.length() - length, 3, length, str, this.pattern, false)) {
                    return false;
                }
                if (length2 != 0 && str.charAt(length2 - 1) != '.') {
                    return false;
                }
            } else {
                if (!k.U0(this.pattern, "*.", false)) {
                    return q0.c(str, this.pattern);
                }
                int length3 = this.pattern.length() - 1;
                int length4 = str.length() - length3;
                if (!k.N0(str.length() - length3, 1, length3, str, this.pattern, false) || k.M0(str, '.', length4 - 1, 4) != -1) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return this.hashAlgorithm + '/' + this.hash.a();
        }
    }

    /* JADX INFO: renamed from: okhttp3.CertificatePinner$check$1, reason: invalid class name */
    public static final class AnonymousClass1 extends h implements C6.a {
        final /* synthetic */ String $hostname;
        final /* synthetic */ List<Certificate> $peerCertificates;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(List<? extends Certificate> list, String str) {
            super(0);
            this.$peerCertificates = list;
            this.$hostname = str;
        }

        @Override // C6.a
        public final List<X509Certificate> invoke() {
            List<Certificate> listClean;
            CertificateChainCleaner certificateChainCleaner$okhttp = CertificatePinner.this.getCertificateChainCleaner$okhttp();
            if (certificateChainCleaner$okhttp == null || (listClean = certificateChainCleaner$okhttp.clean(this.$peerCertificates, this.$hostname)) == null) {
                listClean = this.$peerCertificates;
            }
            ArrayList arrayList = new ArrayList(p162u6.k.v(listClean));
            for (Certificate certificate : listClean) {
                q0.f(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                arrayList.add((X509Certificate) certificate);
            }
            return arrayList;
        }
    }

    public /* synthetic */ CertificatePinner(Set set, CertificateChainCleaner certificateChainCleaner, int i8, e eVar) {
        this(set, (i8 & 2) != 0 ? null : certificateChainCleaner);
    }

    public static final String pin(Certificate certificate) {
        return Companion.pin(certificate);
    }

    public static final m sha1Hash(X509Certificate x509Certificate) {
        return Companion.sha1Hash(x509Certificate);
    }

    public static final m sha256Hash(X509Certificate x509Certificate) {
        return Companion.sha256Hash(x509Certificate);
    }

    public final void check(String str, List<? extends Certificate> list) throws SSLPeerUnverifiedException {
        q0.h(str, "hostname");
        q0.h(list, "peerCertificates");
        check$okhttp(str, new AnonymousClass1(list, str));
    }

    public final void check$okhttp(String str, C6.a aVar) throws SSLPeerUnverifiedException {
        q0.h(str, "hostname");
        q0.h(aVar, "cleanedPeerCertificatesFn");
        List<Pin> listFindMatchingPins = findMatchingPins(str);
        if (listFindMatchingPins.isEmpty()) {
            return;
        }
        List<X509Certificate> list = (List) aVar.invoke();
        for (X509Certificate x509Certificate : list) {
            m mVarSha256Hash = null;
            m mVarSha1Hash = null;
            for (Pin pin : listFindMatchingPins) {
                String hashAlgorithm = pin.getHashAlgorithm();
                if (q0.c(hashAlgorithm, "sha256")) {
                    if (mVarSha256Hash == null) {
                        mVarSha256Hash = Companion.sha256Hash(x509Certificate);
                    }
                    if (q0.c(pin.getHash(), mVarSha256Hash)) {
                        return;
                    }
                } else {
                    if (!q0.c(hashAlgorithm, "sha1")) {
                        throw new AssertionError("unsupported hashAlgorithm: " + pin.getHashAlgorithm());
                    }
                    if (mVarSha1Hash == null) {
                        mVarSha1Hash = Companion.sha1Hash(x509Certificate);
                    }
                    if (q0.c(pin.getHash(), mVarSha1Hash)) {
                        return;
                    }
                }
            }
        }
        StringBuilder sb = new StringBuilder("Certificate pinning failure!\n  Peer certificate chain:");
        for (X509Certificate x509Certificate2 : list) {
            sb.append("\n    ");
            sb.append(Companion.pin(x509Certificate2));
            sb.append(": ");
            sb.append(x509Certificate2.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(str);
        sb.append(":");
        for (Pin pin2 : listFindMatchingPins) {
            sb.append("\n    ");
            sb.append(pin2);
        }
        String string = sb.toString();
        q0.g(string, "StringBuilder().apply(builderAction).toString()");
        throw new SSLPeerUnverifiedException(string);
    }

    public boolean equals(Object obj) {
        if (obj instanceof CertificatePinner) {
            CertificatePinner certificatePinner = (CertificatePinner) obj;
            if (q0.c(certificatePinner.pins, this.pins) && q0.c(certificatePinner.certificateChainCleaner, this.certificateChainCleaner)) {
                return true;
            }
        }
        return false;
    }

    public final List<Pin> findMatchingPins(String str) {
        q0.h(str, "hostname");
        Set<Pin> set = this.pins;
        List arrayList = q.f30542G;
        for (Object obj : set) {
            if (((Pin) obj).matchesHostname(str)) {
                if (arrayList.isEmpty()) {
                    arrayList = new ArrayList();
                }
                p190y4.k.g(arrayList).add(obj);
            }
        }
        return arrayList;
    }

    public final CertificateChainCleaner getCertificateChainCleaner$okhttp() {
        return this.certificateChainCleaner;
    }

    public final Set<Pin> getPins() {
        return this.pins;
    }

    public int hashCode() {
        int iHashCode = (this.pins.hashCode() + 1517) * 41;
        CertificateChainCleaner certificateChainCleaner = this.certificateChainCleaner;
        return iHashCode + (certificateChainCleaner != null ? certificateChainCleaner.hashCode() : 0);
    }

    public final CertificatePinner withCertificateChainCleaner$okhttp(CertificateChainCleaner certificateChainCleaner) {
        q0.h(certificateChainCleaner, "certificateChainCleaner");
        return q0.c(this.certificateChainCleaner, certificateChainCleaner) ? this : new CertificatePinner(this.pins, certificateChainCleaner);
    }

    public final void check(String str, Certificate... certificateArr) throws SSLPeerUnverifiedException {
        List<? extends Certificate> arrayList;
        q0.h(str, "hostname");
        q0.h(certificateArr, "peerCertificates");
        int length = certificateArr.length;
        if (length != 0) {
            arrayList = length != 1 ? new ArrayList<>(new p162u6.h(certificateArr, false)) : v.o(certificateArr[0]);
        } else {
            arrayList = q.f30542G;
        }
        check(str, arrayList);
    }

    public CertificatePinner(Set<Pin> set, CertificateChainCleaner certificateChainCleaner) {
        q0.h(set, "pins");
        this.pins = set;
        this.certificateChainCleaner = certificateChainCleaner;
    }
}
