package com.google.android.gms.internal.ads;

import B0.AbstractC0067q;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.AudioProfile;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class CL {
    public static EL a(AudioManager audioManager, C1097bH c1097bH) {
        List directProfilesForAttributes = audioManager.getDirectProfilesForAttributes((AudioAttributes) c1097bH.a().f15180H);
        HashMap map = new HashMap();
        map.put(2, new HashSet(Cw.J1(12)));
        int i8 = 0;
        for (int i9 = 0; i9 < directProfilesForAttributes.size(); i9++) {
            AudioProfile audioProfileE = C0.E.e(directProfilesForAttributes.get(i9));
            if (audioProfileE.getEncapsulationType() != 1) {
                int format = audioProfileE.getFormat();
                if (Et.c(format) || EL.f12966e.containsKey(Integer.valueOf(format))) {
                    Integer numValueOf = Integer.valueOf(format);
                    if (map.containsKey(numValueOf)) {
                        Set set = (Set) map.get(numValueOf);
                        set.getClass();
                        set.addAll(Cw.J1(audioProfileE.getChannelMasks()));
                    } else {
                        map.put(numValueOf, new HashSet(Cw.J1(audioProfileE.getChannelMasks())));
                    }
                }
            }
        }
        p113o3.r.q(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        for (Map.Entry entry : map.entrySet()) {
            DL dl = new DL(((Integer) entry.getKey()).intValue(), (Set) entry.getValue());
            int i10 = i8 + 1;
            int length = objArrCopyOf.length;
            if (length < i10) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, AbstractC1762oA.e(length, i10));
            }
            objArrCopyOf[i8] = dl;
            i8 = i10;
        }
        return new EL(AbstractC2073uA.s(i8, objArrCopyOf));
    }

    public static IL b(AudioManager audioManager, C1097bH c1097bH) {
        audioManager.getClass();
        try {
            List audioDevicesForAttributes = audioManager.getAudioDevicesForAttributes((AudioAttributes) c1097bH.a().f15180H);
            if (audioDevicesForAttributes.isEmpty()) {
                return null;
            }
            return new IL(AbstractC0067q.g(audioDevicesForAttributes.get(0)));
        } catch (RuntimeException unused) {
            return null;
        }
    }
}
