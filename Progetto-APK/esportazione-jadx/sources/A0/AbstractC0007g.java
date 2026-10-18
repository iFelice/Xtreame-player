package A0;

import android.os.SystemClock;
import com.google.android.gms.internal.ads.Cw;
import java.util.LinkedHashMap;

/* JADX INFO: renamed from: A0.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0007g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f146a = 0;

    static {
        p117p0.C cA = z4.J.a();
        cA.d("TransformerInternal", z4.H.x("Start"));
        cA.d("AssetLoader", z4.H.y("InputFormat", "OutputFormat"));
        Object[] objArr = {"InputFormat", "OutputFormat", "AcceptedInput", "ProducedOutput", "InputEnded", "OutputEnded"};
        Cw.d(6, objArr);
        cA.d("AudioDecoder", z4.H.p(6, objArr));
        cA.d("AudioGraph", z4.H.y("RegisterNewInputStream", "OutputEnded"));
        Object[] objArr2 = {"RegisterNewInputStream", "OutputFormat", "ProducedOutput"};
        Cw.d(3, objArr2);
        cA.d("AudioMixer", z4.H.p(3, objArr2));
        Object[] objArr3 = {"InputFormat", "OutputFormat", "AcceptedInput", "ProducedOutput", "InputEnded", "OutputEnded"};
        Cw.d(6, objArr3);
        cA.d("AudioEncoder", z4.H.p(6, objArr3));
        Object[] objArr4 = {"InputFormat", "OutputFormat", "AcceptedInput", "ProducedOutput", "InputEnded", "OutputEnded"};
        Cw.d(6, objArr4);
        cA.d("VideoDecoder", z4.H.p(6, objArr4));
        Object[] objArr5 = {"RegisterNewInputStream", "SurfaceTextureInput", "QueueFrame", "QueueBitmap", "QueueTexture", "RenderedToOutputSurface", "OutputTextureRendered", "ReceiveEndOfAllInput", "SignalEnded"};
        Cw.d(9, objArr5);
        cA.d("VideoFrameProcessor", z4.H.p(9, objArr5));
        cA.d("ExternalTextureManager", z4.H.y("SignalEOS", "SurfaceTextureTransformFix"));
        cA.d("BitmapTextureManager", z4.H.x("SignalEOS"));
        cA.d("TexIdTextureManager", z4.H.x("SignalEOS"));
        cA.d("Compositor", z4.H.x("OutputTextureRendered"));
        Object[] objArr6 = {"InputFormat", "OutputFormat", "AcceptedInput", "ProducedOutput", "InputEnded", "OutputEnded"};
        Cw.d(6, objArr6);
        cA.d("VideoEncoder", z4.H.p(6, objArr6));
        cA.d("Muxer", z4.H.z("InputFormat", "CanWriteSample", "AcceptedInput", "InputEnded", "OutputEnded"));
        cA.a();
        new LinkedHashMap();
        SystemClock.elapsedRealtime();
    }

    public static synchronized void a() {
    }

    public static synchronized void b(long j8) {
        a();
    }
}
