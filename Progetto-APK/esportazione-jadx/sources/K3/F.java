package K3;

import android.os.SystemClock;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.AbstractC0631g;
import com.google.android.gms.common.internal.C0634j;
import com.google.android.gms.common.internal.C0641q;
import com.google.android.gms.common.internal.C0642s;
import com.google.api.Endpoint;
import org.eclipse.paho.client.mqttv3.DisconnectedBufferOptions;

/* JADX INFO: loaded from: classes.dex */
public final class F implements p052g4.d {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f4481G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f4482H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f4483I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object f4484J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Object f4485K;

    public F(C0233f c0233f, int i8, C0228a c0228a, long j8, long j9) {
        this.f4484J = c0233f;
        this.f4483I = i8;
        this.f4485K = c0228a;
        this.f4481G = j8;
        this.f4482H = j9;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x002d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x002e A[RETURN] */
    public static C0634j a(z zVar, AbstractC0631g abstractC0631g, int i8) {
        C0634j telemetryConfiguration = abstractC0631g.getTelemetryConfiguration();
        if (telemetryConfiguration != null && telemetryConfiguration.f11854H) {
            int i9 = 0;
            int[] iArr = telemetryConfiguration.f11856J;
            if (iArr == null) {
                int[] iArr2 = telemetryConfiguration.f11858L;
                if (iArr2 != null) {
                    while (i9 < iArr2.length) {
                        if (iArr2[i9] != i8) {
                            i9++;
                        }
                    }
                }
                if (zVar.f4591R < telemetryConfiguration.f11857K) {
                    return telemetryConfiguration;
                }
                return null;
            }
            while (i9 < iArr.length) {
                if (iArr[i9] == i8) {
                    if (zVar.f4591R < telemetryConfiguration.f11857K) {
                        return telemetryConfiguration;
                    }
                    return null;
                }
                i9++;
            }
        }
        return null;
    }

    @Override // p052g4.d
    public final void onComplete(p052g4.h hVar) {
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        long j8;
        long j9;
        int iElapsedRealtime;
        if (((C0233f) this.f4484J).a()) {
            C0642s c0642s = com.google.android.gms.common.internal.r.a().f11892a;
            if (c0642s == null || c0642s.f11894H) {
                z zVar = (z) ((C0233f) this.f4484J).f4547P.get((C0228a) this.f4485K);
                if (zVar != null) {
                    Object obj = zVar.f4581H;
                    if (obj instanceof AbstractC0631g) {
                        AbstractC0631g abstractC0631g = (AbstractC0631g) obj;
                        boolean z7 = this.f4481G > 0;
                        int gCoreServiceId = abstractC0631g.getGCoreServiceId();
                        if (c0642s != null) {
                            z7 &= c0642s.f11895I;
                            int i13 = c0642s.f11896J;
                            int i14 = c0642s.f11897K;
                            i8 = c0642s.f11893G;
                            if (abstractC0631g.hasConnectionInfo() && !abstractC0631g.isConnecting()) {
                                C0634j c0634jA = a(zVar, abstractC0631g, this.f4483I);
                                if (c0634jA == null) {
                                    return;
                                }
                                boolean z8 = c0634jA.f11855I && this.f4481G > 0;
                                i14 = c0634jA.f11857K;
                                z7 = z8;
                            }
                            i9 = i13;
                            i10 = i14;
                        } else {
                            i8 = 0;
                            i9 = DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT;
                            i10 = 100;
                        }
                        C0233f c0233f = (C0233f) this.f4484J;
                        if (hVar.h()) {
                            i11 = 0;
                            i12 = 0;
                        } else {
                            if (((p052g4.r) hVar).f25372d) {
                                i11 = 100;
                            } else {
                                Exception excE = hVar.e();
                                if (excE instanceof com.google.android.gms.common.api.h) {
                                    Status status = ((com.google.android.gms.common.api.h) excE).f11763G;
                                    int i15 = status.f11756G;
                                    J3.b bVar = status.f11759J;
                                    if (bVar == null) {
                                        i11 = i15;
                                    } else {
                                        i12 = bVar.f4133H;
                                        i11 = i15;
                                    }
                                } else {
                                    i11 = Endpoint.TARGET_FIELD_NUMBER;
                                }
                            }
                            i12 = -1;
                        }
                        if (z7) {
                            long j10 = this.f4481G;
                            long j11 = this.f4482H;
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            iElapsedRealtime = (int) (SystemClock.elapsedRealtime() - j11);
                            j8 = j10;
                            j9 = jCurrentTimeMillis;
                        } else {
                            j8 = 0;
                            j9 = 0;
                            iElapsedRealtime = -1;
                        }
                        c0233f.getClass();
                        G g8 = new G(new C0641q(this.f4483I, i11, i12, j8, j9, null, null, gCoreServiceId, iElapsedRealtime), i8, i9, i10);
                        X3.d dVar = c0233f.f4550S;
                        dVar.sendMessage(dVar.obtainMessage(18, g8));
                    }
                }
            }
        }
    }
}
