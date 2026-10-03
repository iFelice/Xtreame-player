package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import java.util.Date;
import java.util.Set;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.l3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1599l3 extends X509Certificate {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final X509Certificate f19705G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final byte[] f19706H;

    public C1599l3(X509Certificate x509Certificate, byte[] bArr) {
        this.f19705G = x509Certificate;
        this.f19706H = bArr;
    }

    @Override // java.security.cert.X509Certificate
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void checkValidity() throws CertificateNotYetValidException, CertificateExpiredException {
        this.f19705G.checkValidity();
    }

    @Override // java.security.cert.X509Certificate
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final void checkValidity(Date date) throws CertificateNotYetValidException, CertificateExpiredException {
        this.f19705G.checkValidity(date);
    }

    @Override // java.security.cert.Certificate
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final void verify(PublicKey publicKey) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, CertificateException, NoSuchProviderException {
        this.f19705G.verify(publicKey);
    }

    @Override // java.security.cert.Certificate
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final void verify(PublicKey publicKey, String str) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, CertificateException, NoSuchProviderException {
        this.f19705G.verify(publicKey, str);
    }

    @Override // java.security.cert.X509Certificate
    public final int getBasicConstraints() {
        return this.f19705G.getBasicConstraints();
    }

    @Override // java.security.cert.X509Extension
    public final Set getCriticalExtensionOIDs() {
        return this.f19705G.getCriticalExtensionOIDs();
    }

    @Override // java.security.cert.Certificate
    public final byte[] getEncoded() {
        return this.f19706H;
    }

    @Override // java.security.cert.X509Extension
    public final byte[] getExtensionValue(String str) {
        return this.f19705G.getExtensionValue(str);
    }

    @Override // java.security.cert.X509Certificate
    public final Principal getIssuerDN() {
        return this.f19705G.getIssuerDN();
    }

    @Override // java.security.cert.X509Certificate
    public final boolean[] getIssuerUniqueID() {
        return this.f19705G.getIssuerUniqueID();
    }

    @Override // java.security.cert.X509Certificate
    public final boolean[] getKeyUsage() {
        return this.f19705G.getKeyUsage();
    }

    @Override // java.security.cert.X509Extension
    public final Set getNonCriticalExtensionOIDs() {
        return this.f19705G.getNonCriticalExtensionOIDs();
    }

    @Override // java.security.cert.X509Certificate
    public final Date getNotAfter() {
        return this.f19705G.getNotAfter();
    }

    @Override // java.security.cert.X509Certificate
    public final Date getNotBefore() {
        return this.f19705G.getNotBefore();
    }

    @Override // java.security.cert.Certificate
    public final PublicKey getPublicKey() {
        return this.f19705G.getPublicKey();
    }

    @Override // java.security.cert.X509Certificate
    public final BigInteger getSerialNumber() {
        return this.f19705G.getSerialNumber();
    }

    @Override // java.security.cert.X509Certificate
    public final String getSigAlgName() {
        return this.f19705G.getSigAlgName();
    }

    @Override // java.security.cert.X509Certificate
    public final String getSigAlgOID() {
        return this.f19705G.getSigAlgOID();
    }

    @Override // java.security.cert.X509Certificate
    public final byte[] getSigAlgParams() {
        return this.f19705G.getSigAlgParams();
    }

    @Override // java.security.cert.X509Certificate
    public final byte[] getSignature() {
        return this.f19705G.getSignature();
    }

    @Override // java.security.cert.X509Certificate
    public final Principal getSubjectDN() {
        return this.f19705G.getSubjectDN();
    }

    @Override // java.security.cert.X509Certificate
    public final boolean[] getSubjectUniqueID() {
        return this.f19705G.getSubjectUniqueID();
    }

    @Override // java.security.cert.X509Certificate
    public final byte[] getTBSCertificate() {
        return this.f19705G.getTBSCertificate();
    }

    @Override // java.security.cert.X509Certificate
    public final int getVersion() {
        return this.f19705G.getVersion();
    }

    @Override // java.security.cert.X509Extension
    public final boolean hasUnsupportedCriticalExtension() {
        return this.f19705G.hasUnsupportedCriticalExtension();
    }

    @Override // java.security.cert.Certificate
    public final String toString() {
        return this.f19705G.toString();
    }
}
