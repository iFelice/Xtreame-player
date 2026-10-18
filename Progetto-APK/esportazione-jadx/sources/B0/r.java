package B0;

import D0.C0114d;
import D0.C0116f;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import com.google.android.gms.internal.ads.EL;
import com.google.android.gms.internal.ads.Et;
import com.google.android.gms.internal.ads.GL;
import com.google.android.gms.internal.ads.IL;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class r extends AudioDeviceCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1064a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1065b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r(C0116f c0116f) {
        this(c0116f, 1);
        this.f1064a = 1;
    }

    @Override // android.media.AudioDeviceCallback
    public final void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
        switch (this.f1064a) {
            case 0:
                U4.b bVar = (U4.b) this.f1065b;
                bVar.getClass();
                bVar.b0();
                throw null;
            case 1:
                C0116f c0116f = (C0116f) this.f1065b;
                c0116f.a(C0114d.c(c0116f.f1925a, c0116f.f1933i, c0116f.f1932h));
                return;
            default:
                GL gl = (GL) this.f1065b;
                ((GL) this.f1065b).b(EL.b(gl.f13512a, gl.f13519h, gl.f13518g));
                return;
        }
    }

    @Override // android.media.AudioDeviceCallback
    public final void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
        switch (this.f1064a) {
            case 0:
                U4.b bVar = (U4.b) this.f1065b;
                bVar.getClass();
                bVar.b0();
                throw null;
            case 1:
                if (p117p0.M.l(audioDeviceInfoArr, ((C0116f) this.f1065b).f1932h)) {
                    ((C0116f) this.f1065b).f1932h = null;
                }
                C0116f c0116f = (C0116f) this.f1065b;
                c0116f.a(C0114d.c(c0116f.f1925a, c0116f.f1933i, c0116f.f1932h));
                return;
            default:
                IL il = ((GL) this.f1065b).f13518g;
                int i8 = Et.f13234a;
                for (AudioDeviceInfo audioDeviceInfo : audioDeviceInfoArr) {
                    if (Objects.equals(audioDeviceInfo, il)) {
                        ((GL) this.f1065b).f13518g = null;
                        GL gl = (GL) this.f1065b;
                        gl.b(EL.b(gl.f13512a, gl.f13519h, gl.f13518g));
                        return;
                    }
                }
                GL gl2 = (GL) this.f1065b;
                gl2.b(EL.b(gl2.f13512a, gl2.f13519h, gl2.f13518g));
                return;
        }
    }

    public /* synthetic */ r(GL gl) {
        this.f1064a = 2;
        this.f1065b = gl;
    }

    public /* synthetic */ r(Object obj, int i8) {
        this.f1064a = i8;
        this.f1065b = obj;
    }
}
