package R0;

import B0.C0041c;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.Spatializer;
import android.os.Build;
import java.util.Objects;
import p094m0.C3121d;
import p094m0.C3136t;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements p190y4.l {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ q f6139G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ k f6140H;

    public /* synthetic */ f(q qVar, k kVar) {
        this.f6139G = qVar;
        this.f6140H = kVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:17:0x0033  */
    @Override // p190y4.l
    public final boolean apply(Object obj) {
        int i8;
        C0041c c0041c;
        C0041c c0041c2;
        C3136t c3136t = (C3136t) obj;
        q qVar = this.f6139G;
        qVar.getClass();
        if (!this.f6140H.f6193P) {
            return true;
        }
        Boolean bool = qVar.f6240j;
        if ((bool != null && bool.booleanValue()) || (i8 = c3136t.f27016G) == -1 || i8 <= 2) {
            return true;
        }
        String str = c3136t.f27041o;
        if (str != null) {
            switch (str) {
                case "audio/eac3-joc":
                case "audio/ac3":
                case "audio/ac4":
                case "audio/eac3":
                    if (Build.VERSION.SDK_INT < 32 || (c0041c2 = qVar.f6238h) == null || !c0041c2.f913G) {
                        return true;
                    }
                    break;
            }
        }
        if (Build.VERSION.SDK_INT >= 32 && (c0041c = qVar.f6238h) != null && c0041c.f913G) {
            Spatializer spatializer = (Spatializer) c0041c.f914H;
            spatializer.getClass();
            if (O.c.c(spatializer).isAvailable()) {
                Spatializer spatializer2 = (Spatializer) qVar.f6238h.f914H;
                spatializer2.getClass();
                if (O.c.c(spatializer2).isEnabled()) {
                    C0041c c0041c3 = qVar.f6238h;
                    C3121d c3121d = qVar.f6239i;
                    c0041c3.getClass();
                    boolean zEquals = Objects.equals(str, "audio/eac3-joc");
                    int i9 = c3136t.f27016G;
                    if (zEquals) {
                        if (i9 == 16) {
                            i9 = 12;
                        }
                    } else if (Objects.equals(str, "audio/iamf")) {
                        if (i9 == -1) {
                            i9 = 6;
                        }
                    } else if (Objects.equals(str, "audio/ac4") && (i9 == 18 || i9 == 21)) {
                        i9 = 24;
                    }
                    int iR = M.r(i9);
                    if (iR != 0) {
                        AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(iR);
                        int i10 = c3136t.f27017H;
                        if (i10 != -1) {
                            channelMask.setSampleRate(i10);
                        }
                        Spatializer spatializer3 = (Spatializer) c0041c3.f914H;
                        spatializer3.getClass();
                        if (O.c.c(spatializer3).canBeSpatialized((AudioAttributes) c3121d.a().f24988H, channelMask.build())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }
}
