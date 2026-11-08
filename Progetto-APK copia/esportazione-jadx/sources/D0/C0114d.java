package D0;

import B0.AbstractC0067q;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioProfile;
import android.media.AudioTrack;
import android.os.Build;
import android.provider.Settings;
import android.util.SparseArray;
import com.google.android.gms.internal.ads.AbstractC1349gB;
import com.google.android.gms.internal.ads.Cw;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p094m0.C3121d;
import z4.d0;
import z4.i0;

/* JADX INFO: renamed from: D0.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0114d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C0114d f1916c = new C0114d(z4.H.x(C0113c.f1912d));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final d0 f1917d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final i0 f1918e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SparseArray f1919a = new SparseArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1920b;

    static {
        Object[] objArr = {2, 5, 6};
        Cw.d(3, objArr);
        f1917d = z4.H.p(3, objArr);
        p117p0.C c8 = new p117p0.C(4);
        c8.d(5, 6);
        c8.d(17, 6);
        c8.d(7, 6);
        c8.d(30, 10);
        c8.d(18, 6);
        c8.d(6, 8);
        c8.d(8, 8);
        c8.d(14, 8);
        f1918e = c8.a();
    }

    public C0114d(d0 d0Var) {
        for (int i8 = 0; i8 < d0Var.f31846J; i8++) {
            C0113c c0113c = (C0113c) d0Var.get(i8);
            this.f1919a.put(c0113c.f1913a, c0113c);
        }
        int iMax = 0;
        for (int i9 = 0; i9 < this.f1919a.size(); i9++) {
            iMax = Math.max(iMax, ((C0113c) this.f1919a.valueAt(i9)).f1914b);
        }
        this.f1920b = iMax;
    }

    public static d0 a(int[] iArr, int i8) {
        z4.E eQ = z4.H.q();
        if (iArr == null) {
            iArr = new int[0];
        }
        for (int i9 : iArr) {
            eQ.g0(new C0113c(i9, i8));
        }
        return eQ.m0();
    }

    /* JADX WARN: Code duplicated, block: B:84:0x0246  */
    /* JADX WARN: Code duplicated, block: B:86:0x024e  */
    public static C0114d b(Context context, Intent intent, C3121d c3121d, p039f.S s7) {
        p039f.S s8;
        AudioDeviceInfo[] devices;
        AudioManager audioManagerF = p102n0.c.f(context);
        if (s7 != null) {
            s8 = s7;
        } else {
            s8 = null;
            if (Build.VERSION.SDK_INT >= 33) {
                audioManagerF.getClass();
                List audioDevicesForAttributes = audioManagerF.getAudioDevicesForAttributes((AudioAttributes) c3121d.a().f24988H);
                if (!audioDevicesForAttributes.isEmpty()) {
                    s8 = new p039f.S(AbstractC0067q.g(audioDevicesForAttributes.get(0)), 28);
                }
            }
        }
        int i8 = Build.VERSION.SDK_INT;
        i0 i0Var = f1918e;
        if (i8 >= 33 && (p117p0.M.P(context) || (i8 >= 23 && context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")))) {
            List directProfilesForAttributes = audioManagerF.getDirectProfilesForAttributes((AudioAttributes) c3121d.a().f24988H);
            HashMap map = new HashMap();
            map.put(2, new HashSet(p190y4.k.f(12)));
            for (int i9 = 0; i9 < directProfilesForAttributes.size(); i9++) {
                AudioProfile audioProfileE = C0.E.e(directProfilesForAttributes.get(i9));
                if (audioProfileE.getEncapsulationType() != 1) {
                    int format = audioProfileE.getFormat();
                    if (p117p0.M.M(format) || i0Var.containsKey(Integer.valueOf(format))) {
                        if (map.containsKey(Integer.valueOf(format))) {
                            Set set = (Set) map.get(Integer.valueOf(format));
                            set.getClass();
                            set.addAll(p190y4.k.f(audioProfileE.getChannelMasks()));
                        } else {
                            map.put(Integer.valueOf(format), new HashSet(p190y4.k.f(audioProfileE.getChannelMasks())));
                        }
                    }
                }
            }
            z4.E eQ = z4.H.q();
            for (Map.Entry entry : map.entrySet()) {
                eQ.g0(new C0113c(((Integer) entry.getKey()).intValue(), (Set) entry.getValue()));
            }
            return new C0114d(eQ.m0());
        }
        if (i8 >= 23) {
            if (s8 == null) {
                audioManagerF.getClass();
                devices = audioManagerF.getDevices(2);
            } else {
                devices = new AudioDeviceInfo[]{(AudioDeviceInfo) s8.f24988H};
            }
            z4.K k8 = new z4.K(4);
            k8.h0(8, 7);
            if (i8 >= 31) {
                k8.h0(26, 27);
            }
            if (i8 >= 33) {
                k8.g0(30);
            }
            z4.L lN0 = k8.n0();
            for (AudioDeviceInfo audioDeviceInfo : devices) {
                if (lN0.contains(Integer.valueOf(audioDeviceInfo.getType()))) {
                    return f1916c;
                }
            }
        }
        z4.K k9 = new z4.K(4);
        k9.g0(2);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29 && (p117p0.M.P(context) || (i10 >= 23 && context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")))) {
            z4.E eQ2 = z4.H.q();
            AbstractC1349gB it = i0Var.keySet().iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                int iIntValue = num.intValue();
                if (Build.VERSION.SDK_INT >= p117p0.M.p(iIntValue) && AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(iIntValue).setSampleRate(48000).build(), (AudioAttributes) c3121d.a().f24988H)) {
                    eQ2.g0(num);
                }
            }
            eQ2.g0(2);
            d0 d0VarM0 = eQ2.m0();
            d0VarM0.getClass();
            k9.j0(d0VarM0);
            return new C0114d(a(p190y4.k.g0(k9.n0()), 10));
        }
        ContentResolver contentResolver = context.getContentResolver();
        boolean z7 = Settings.Global.getInt(contentResolver, "use_external_surround_sound_flag", 0) == 1;
        if (!z7) {
            String str = Build.MANUFACTURER;
            if (str.equals("Amazon") || str.equals("Xiaomi")) {
                if (Settings.Global.getInt(contentResolver, "external_surround_sound_enabled", 0) == 1) {
                    d0 d0Var = f1917d;
                    d0Var.getClass();
                    k9.j0(d0Var);
                }
            }
        } else if (Settings.Global.getInt(contentResolver, "external_surround_sound_enabled", 0) == 1) {
            d0 d0Var2 = f1917d;
            d0Var2.getClass();
            k9.j0(d0Var2);
        }
        if (intent == null || z7 || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) != 1) {
            return new C0114d(a(p190y4.k.g0(k9.n0()), 10));
        }
        int[] intArrayExtra = intent.getIntArrayExtra("android.media.extra.ENCODINGS");
        if (intArrayExtra != null) {
            List listF = p190y4.k.f(intArrayExtra);
            listF.getClass();
            k9.j0(listF);
        }
        return new C0114d(a(p190y4.k.g0(k9.n0()), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 10)));
    }

    public static C0114d c(Context context, C3121d c3121d, p039f.S s7) {
        return b(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")), c3121d, s7);
    }

    /* JADX WARN: Code duplicated, block: B:72:0x00f7  */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0086, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.util.Pair d(p094m0.C3121d r14, p094m0.C3136t r15) {
        /*
            Method dump skipped, instruction units count: 286
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: D0.C0114d.d(m0.d, m0.t):android.util.Pair");
    }

    /* JADX WARN: Code duplicated, block: B:28:0x004b  */
    /* JADX WARN: Code duplicated, block: B:35:? A[RETURN, SYNTHETIC] */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0114d)) {
            return false;
        }
        C0114d c0114d = (C0114d) obj;
        SparseArray sparseArray = this.f1919a;
        SparseArray sparseArray2 = c0114d.f1919a;
        String str = p117p0.M.f28050a;
        if (sparseArray == null) {
            if (sparseArray2 == null) {
                if (this.f1920b == c0114d.f1920b) {
                    return true;
                }
            }
        } else if (sparseArray2 != null) {
            if (Build.VERSION.SDK_INT < 31) {
                int size = sparseArray.size();
                if (size == sparseArray2.size()) {
                    for (int i8 = 0; i8 < size; i8++) {
                        if (Objects.equals(sparseArray.valueAt(i8), sparseArray2.get(sparseArray.keyAt(i8)))) {
                        }
                    }
                    if (this.f1920b == c0114d.f1920b) {
                        return true;
                    }
                }
            } else if (sparseArray.contentEquals(sparseArray2)) {
                if (this.f1920b == c0114d.f1920b) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iContentHashCode;
        SparseArray sparseArray = this.f1919a;
        String str = p117p0.M.f28050a;
        if (Build.VERSION.SDK_INT >= 31) {
            iContentHashCode = sparseArray.contentHashCode();
        } else {
            int iHashCode = 17;
            for (int i8 = 0; i8 < sparseArray.size(); i8++) {
                iHashCode = Objects.hashCode(sparseArray.valueAt(i8)) + ((sparseArray.keyAt(i8) + (iHashCode * 31)) * 31);
            }
            iContentHashCode = iHashCode;
        }
        return (iContentHashCode * 31) + this.f1920b;
    }

    public final String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.f1920b + ", audioProfiles=" + this.f1919a + "]";
    }
}
