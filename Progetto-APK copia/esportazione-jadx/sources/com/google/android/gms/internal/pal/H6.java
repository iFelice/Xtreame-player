package com.google.android.gms.internal.pal;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class H6 implements InterfaceC2792p3 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final byte[] f23548f = new byte[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2805r1 f23549a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f23550b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f23551c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p193z.h f23552d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f23553e;

    public H6(ECPublicKey eCPublicKey, byte[] bArr, String str, int i8, p193z.h hVar) throws GeneralSecurityException {
        AbstractC2864y4.f0(eCPublicKey.getW(), eCPublicKey.getParams().getCurve());
        this.f23549a = new C2805r1(eCPublicKey, 12);
        this.f23551c = bArr;
        this.f23550b = str;
        this.f23553e = i8;
        this.f23552d = hVar;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2792p3
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        C2767m2 c2767m2;
        p193z.h hVar = this.f23552d;
        int i8 = hVar.f31561a;
        C2805r1 c2805r1 = this.f23549a;
        ECParameterSpec params = ((ECPublicKey) c2805r1.f23994H).getParams();
        KeyPairGenerator keyPairGenerator = (KeyPairGenerator) J6.f23572h.a("EC");
        keyPairGenerator.initialize(params);
        KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
        ECPublicKey eCPublicKey = (ECPublicKey) keyPairGenerateKeyPair.getPublic();
        byte[] bArrS0 = AbstractC2864y4.s0((ECPrivateKey) keyPairGenerateKeyPair.getPrivate(), (ECPublicKey) c2805r1.f23994H);
        byte[] bArrE0 = AbstractC2864y4.E0(eCPublicKey.getParams().getCurve(), this.f23553e, eCPublicKey.getW());
        byte[] bArrY = AbstractC2864y4.Y(bArrE0, bArrS0);
        J6 j8 = J6.f23570f;
        String str = this.f23550b;
        Mac mac = (Mac) j8.a(str);
        if (i8 > mac.getMacLength() * 255) {
            throw new GeneralSecurityException("size too large");
        }
        byte[] bArr3 = this.f23551c;
        if (bArr3 == null || bArr3.length == 0) {
            mac.init(new SecretKeySpec(new byte[mac.getMacLength()], str));
        } else {
            mac.init(new SecretKeySpec(bArr3, str));
        }
        byte[] bArr4 = new byte[i8];
        mac.init(new SecretKeySpec(mac.doFinal(bArrY), str));
        byte[] bArrDoFinal = new byte[0];
        int i9 = 1;
        int i10 = 0;
        while (true) {
            mac.update(bArrDoFinal);
            mac.update(bArr2);
            mac.update((byte) i9);
            bArrDoFinal = mac.doFinal();
            int length = bArrDoFinal.length;
            int i11 = i10 + length;
            if (i11 >= i8) {
                break;
            }
            System.arraycopy(bArrDoFinal, 0, bArr4, i10, length);
            i9++;
            i10 = i11;
        }
        System.arraycopy(bArrDoFinal, 0, bArr4, i10, i8 - i10);
        Q6 q6A = Q6.a(bArrE0);
        byte[] bArr5 = Q6.a(bArr4).f23635a;
        int length2 = bArr5.length;
        byte[] bArr6 = new byte[length2];
        System.arraycopy(bArr5, 0, bArr6, 0, length2);
        int i12 = hVar.f31561a;
        if (length2 != i12) {
            throw new GeneralSecurityException("Symmetric key has incorrect length");
        }
        String str2 = (String) hVar.f31563c;
        if (str2.equals(H3.f23543b)) {
            C2770m5 c2770m5N = C2778n5.n();
            c2770m5N.b((C2778n5) hVar.f31564d);
            C2796q c2796qO = r.o(0, bArr6, i12);
            if (c2770m5N.f23476I) {
                c2770m5N.f();
                c2770m5N.f23476I = false;
            }
            ((C2778n5) c2770m5N.f23475H).zzf = c2796qO;
            c2767m2 = new C2767m2((InterfaceC2768m3) F3.c(str2, (C2778n5) c2770m5N.d(), InterfaceC2768m3.class));
        } else if (str2.equals(H3.f23542a)) {
            int i13 = hVar.f31562b;
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr6, 0, i13);
            byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr6, i13, i12);
            C2674a5 c2674a5N = C2682b5.n();
            W4 w7 = (W4) hVar.f31565e;
            c2674a5N.b(w7.p());
            C2796q c2796qO2 = r.o(0, bArrCopyOfRange, bArrCopyOfRange.length);
            if (c2674a5N.f23476I) {
                c2674a5N.f();
                c2674a5N.f23476I = false;
            }
            ((C2682b5) c2674a5N.f23475H).zzg = c2796qO2;
            C2682b5 c2682b5 = (C2682b5) c2674a5N.d();
            O5 o5N = P5.n();
            o5N.b(w7.q());
            C2796q c2796qO3 = r.o(0, bArrCopyOfRange2, bArrCopyOfRange2.length);
            if (o5N.f23476I) {
                o5N.f();
                o5N.f23476I = false;
            }
            ((P5) o5N.f23475H).zzg = c2796qO3;
            P5 p7 = (P5) o5N.d();
            V4 v4N = W4.n();
            int iM = w7.m();
            if (v4N.f23476I) {
                v4N.f();
                v4N.f23476I = false;
            }
            ((W4) v4N.f23475H).zze = iM;
            if (v4N.f23476I) {
                v4N.f();
                v4N.f23476I = false;
            }
            ((W4) v4N.f23475H).zzf = c2682b5;
            if (v4N.f23476I) {
                v4N.f();
                v4N.f23476I = false;
            }
            W4.t((W4) v4N.f23475H, p7);
            c2767m2 = new C2767m2((InterfaceC2768m3) F3.c(str2, (W4) v4N.d(), InterfaceC2768m3.class));
        } else {
            if (!str2.equals(V3.f23676a)) {
                throw new GeneralSecurityException("unknown DEM key type");
            }
            C2833u5 c2833u5N = C2841v5.n();
            c2833u5N.b((C2841v5) hVar.f31566f);
            C2796q c2796qO4 = r.o(0, bArr6, i12);
            if (c2833u5N.f23476I) {
                c2833u5N.f();
                c2833u5N.f23476I = false;
            }
            ((C2841v5) c2833u5N.f23475H).zzf = c2796qO4;
            c2767m2 = new C2767m2((InterfaceC2776n3) F3.c(str2, (C2841v5) c2833u5N.d(), InterfaceC2776n3.class));
        }
        byte[] bArr7 = f23548f;
        InterfaceC2768m3 interfaceC2768m3 = (InterfaceC2768m3) c2767m2.f23961H;
        byte[] bArrZza = interfaceC2768m3 != null ? interfaceC2768m3.zza(bArr, bArr7) : ((InterfaceC2776n3) c2767m2.f23962I).zza(bArr, bArr7);
        byte[] bArr8 = q6A.f23635a;
        int length3 = bArr8.length;
        byte[] bArr9 = new byte[length3];
        System.arraycopy(bArr8, 0, bArr9, 0, length3);
        return ByteBuffer.allocate(length3 + bArrZza.length).put(bArr9).put(bArrZza).array();
    }
}
