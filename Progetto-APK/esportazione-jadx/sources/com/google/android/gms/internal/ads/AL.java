package com.google.android.gms.internal.ads;

import android.media.AudioDeviceInfo;
import android.media.AudioManager;

/* JADX INFO: loaded from: classes.dex */
public abstract class AL {
    public static boolean a(AudioManager audioManager, IL il) {
        AudioDeviceInfo[] devices;
        if (il == null) {
            audioManager.getClass();
            devices = audioManager.getDevices(2);
        } else {
            devices = new AudioDeviceInfo[]{il.f13878a};
        }
        AbstractC2333zA abstractC2333zAB = b();
        for (AudioDeviceInfo audioDeviceInfo : devices) {
            if (abstractC2333zAB.contains(Integer.valueOf(audioDeviceInfo.getType()))) {
                return true;
            }
        }
        return false;
    }

    private static AbstractC2333zA b() {
        C2281yA c2281yA = new C2281yA();
        Integer[] numArr = {8, 7};
        if (c2281yA.f21998d != null) {
            for (int i8 = 0; i8 < 2; i8++) {
                c2281yA.h(numArr[i8]);
            }
        } else {
            Cw.O0(numArr, 2);
            c2281yA.f(c2281yA.f20247b + 2);
            System.arraycopy(numArr, 0, c2281yA.f20246a, c2281yA.f20247b, 2);
            c2281yA.f20247b += 2;
        }
        int i9 = Et.f13234a;
        if (i9 >= 31) {
            Integer[] numArr2 = {26, 27};
            if (c2281yA.f21998d != null) {
                for (int i10 = 0; i10 < 2; i10++) {
                    c2281yA.h(numArr2[i10]);
                }
            } else {
                Cw.O0(numArr2, 2);
                c2281yA.f(c2281yA.f20247b + 2);
                System.arraycopy(numArr2, 0, c2281yA.f20246a, c2281yA.f20247b, 2);
                c2281yA.f20247b += 2;
            }
        }
        if (i9 >= 33) {
            c2281yA.h(30);
        }
        return c2281yA.j();
    }
}
