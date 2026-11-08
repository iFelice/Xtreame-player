package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;

/* JADX INFO: loaded from: classes.dex */
public abstract class BL {
    public static int a(int i8, int i9, C1097bH c1097bH) {
        for (int i10 = 10; i10 > 0; i10--) {
            int iN = Et.n(i10);
            if (iN != 0 && AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i8).setSampleRate(i9).setChannelMask(iN).build(), (AudioAttributes) c1097bH.a().f15180H)) {
                return i10;
            }
        }
        return 0;
    }

    public static AbstractC2073uA b(C1097bH c1097bH) {
        C1917rA c1917rA = new C1917rA();
        UA ua = EL.f12966e;
        SA sa = ua.f21849H;
        if (sa == null) {
            SA sa2 = new SA(ua, new TA(ua.f16805K, 0, ua.f16806L));
            ua.f21849H = sa2;
            sa = sa2;
        }
        AbstractC1349gB abstractC1349gBN = sa.n();
        while (abstractC1349gBN.hasNext()) {
            Integer num = (Integer) abstractC1349gBN.next();
            int iIntValue = num.intValue();
            if (Et.f13234a >= Et.m(iIntValue) && AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(iIntValue).setSampleRate(48000).build(), (AudioAttributes) c1097bH.a().f15180H)) {
                c1917rA.b(num);
            }
        }
        c1917rA.b(2);
        return c1917rA.h();
    }
}
