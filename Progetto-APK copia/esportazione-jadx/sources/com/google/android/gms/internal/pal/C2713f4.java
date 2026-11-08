package com.google.android.gms.internal.pal;

import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.f4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2713f4 implements InterfaceC2792p3 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final byte[] f23815e = new byte[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2691c6 f23816a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC2721g4 f23817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InterfaceC2697d4 f23818c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C2805r1 f23819d;

    public C2713f4(C2691c6 c2691c6, InterfaceC2721g4 interfaceC2721g4, C2805r1 c2805r1, InterfaceC2697d4 interfaceC2697d4) {
        this.f23816a = c2691c6;
        this.f23817b = interfaceC2721g4;
        this.f23819d = c2805r1;
        this.f23818c = interfaceC2697d4;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2792p3
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArrH0;
        byte[] bArr3 = bArr2 == null ? new byte[0] : bArr2;
        C2691c6 c2691c6 = this.f23816a;
        InterfaceC2721g4 interfaceC2721g4 = this.f23817b;
        C2805r1 c2805r1 = this.f23819d;
        InterfaceC2697d4 interfaceC2697d4 = this.f23818c;
        C2767m2 c2767m2A = interfaceC2721g4.a(c2691c6.r().p());
        byte[] bArr4 = (byte[]) c2767m2A.f23962I;
        byte[] bArr5 = (byte[]) c2767m2A.f23961H;
        byte[] bArrY = AbstractC2864y4.Y(AbstractC2737i4.f23870n, interfaceC2721g4.zzb(), c2805r1.e(), interfaceC2697d4.zzb());
        byte[] bArr6 = AbstractC2737i4.f23868l;
        byte[] bArr7 = C2705e4.f23792d;
        Charset charset = StandardCharsets.UTF_8;
        byte[] bytes = "psk_id_hash".getBytes(charset);
        byte[] bArr8 = AbstractC2737i4.f23871o;
        byte[] bArrY2 = AbstractC2864y4.Y(AbstractC2737i4.f23857a, c2805r1.g(AbstractC2864y4.Y(bArr8, bArrY, bytes, bArr7), bArr6), c2805r1.g(AbstractC2864y4.Y(bArr8, bArrY, "info_hash".getBytes(charset), bArr3), bArr6));
        byte[] bArrG = c2805r1.g(AbstractC2864y4.Y(bArr8, bArrY, "secret".getBytes(charset), bArr7), bArr5);
        int iZza = interfaceC2697d4.zza();
        byte[] bArrF = c2805r1.f(iZza, bArrG, AbstractC2864y4.Y(AbstractC2737i4.b(2, iZza), bArr8, bArrY, "key".getBytes(charset), bArrY2));
        byte[] bArrF2 = c2805r1.f(12, bArrG, AbstractC2864y4.Y(AbstractC2737i4.b(2, 12), bArr8, bArrY, "base_nonce".getBytes(charset), bArrY2));
        BigInteger bigInteger = BigInteger.ONE;
        C2705e4 c2705e4 = new C2705e4(bArr4, bArrF, bArrF2, bigInteger.shiftLeft(96).subtract(bigInteger), interfaceC2697d4);
        byte[] bArr9 = f23815e;
        synchronized (c2705e4) {
            try {
                byte[] byteArray = c2705e4.f23795c.toByteArray();
                int length = byteArray.length;
                if (length != 12) {
                    if (length > 13) {
                        throw new GeneralSecurityException("integer too large");
                    }
                    if (length != 13) {
                        byte[] bArr10 = new byte[12];
                        System.arraycopy(byteArray, 0, bArr10, 12 - length, length);
                        byteArray = bArr10;
                    } else {
                        if (byteArray[0] != 0) {
                            throw new GeneralSecurityException("integer too large");
                        }
                        byteArray = Arrays.copyOfRange(byteArray, 1, 13);
                    }
                }
                bArrH0 = AbstractC2864y4.h0(bArrF2, byteArray);
                if (c2705e4.f23795c.compareTo(c2705e4.f23794b) >= 0) {
                    throw new GeneralSecurityException("message limit reached");
                }
                c2705e4.f23795c = c2705e4.f23795c.add(bigInteger);
            } catch (Throwable th) {
                throw th;
            }
        }
        return AbstractC2864y4.Y(bArr4, c2705e4.f23793a.a(bArrF, bArrH0, bArr, bArr9));
    }
}
