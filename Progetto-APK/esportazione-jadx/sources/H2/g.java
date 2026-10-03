package H2;

import A0.O;
import O5.o;
import O5.t;
import O5.u;
import P5.l;
import android.content.ComponentName;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.ads.interactivemedia.v3.impl.data.zzbz;
import com.google.android.gms.common.internal.T;
import com.google.android.gms.common.internal.U;
import com.google.android.gms.common.internal.V;
import com.journeyapps.barcodescanner.BarcodeView;
import java.util.ArrayList;
import java.util.List;
import p130q5.k;
import p130q5.m;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class g implements Handler.Callback {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f3654G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f3655H;

    public /* synthetic */ g(V v5) {
        this.f3654G = 1;
        this.f3655H = v5;
    }

    private final boolean a(Message message) {
        int i8 = message.what;
        if (i8 == 0) {
            synchronized (((V) this.f3655H).f11826d) {
                try {
                    T t7 = (T) message.obj;
                    U u7 = (U) ((V) this.f3655H).f11826d.get(t7);
                    if (u7 != null && u7.f11819a.isEmpty()) {
                        if (u7.f11821c) {
                            u7.f11825g.f11828f.removeMessages(1, u7.f11823e);
                            V v5 = u7.f11825g;
                            v5.f11829g.b(v5.f11827e, u7);
                            u7.f11821c = false;
                            u7.f11820b = 2;
                        }
                        ((V) this.f3655H).f11826d.remove(t7);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return true;
        }
        if (i8 != 1) {
            return false;
        }
        synchronized (((V) this.f3655H).f11826d) {
            try {
                T t8 = (T) message.obj;
                U u8 = (U) ((V) this.f3655H).f11826d.get(t8);
                if (u8 != null && u8.f11820b == 3) {
                    Log.e("GmsClientSupervisor", "Timeout waiting for ServiceConnection callback ".concat(String.valueOf(t8)), new Exception());
                    ComponentName componentName = u8.f11824f;
                    if (componentName == null) {
                        t8.getClass();
                        componentName = null;
                    }
                    if (componentName == null) {
                        String str = t8.f11817b;
                        com.bumptech.glide.c.h(str);
                        componentName = new ComponentName(str, zzbz.UNKNOWN_CONTENT_TYPE);
                    }
                    u8.onServiceDisconnected(componentName);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return true;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        BarcodeView barcodeView;
        O5.a aVar;
        l lVar;
        P2.b bVar;
        p130q5.j jVar;
        m mVarB = null;
        switch (this.f3654G) {
            case 0:
                int i8 = message.what;
                Object obj = this.f3655H;
                if (i8 == 1) {
                    ((h) obj).b((e) message.obj);
                    return true;
                }
                if (i8 == 2) {
                    ((h) obj).f3659d.k((e) message.obj);
                }
                return false;
            case 1:
                return a(message);
            case 2:
                if (message.what != 0) {
                    return false;
                }
                p096m2.i iVar = (p096m2.i) this.f3655H;
                O.I(message.obj);
                synchronized (iVar.f27224H) {
                    try {
                        O.I(iVar.f27226J);
                        throw null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            case 3:
                int i9 = message.what;
                Object obj2 = this.f3655H;
                if (i9 == R.id.zxing_decode_succeeded) {
                    O5.b bVar2 = (O5.b) message.obj;
                    if (bVar2 != null && (aVar = (barcodeView = (BarcodeView) obj2).f24559k0) != null && barcodeView.f24558j0 != 1) {
                        aVar.d(bVar2);
                        if (barcodeView.f24558j0 == 2) {
                            barcodeView.f24558j0 = 1;
                            barcodeView.f24559k0 = null;
                            barcodeView.i();
                        }
                    }
                } else if (i9 != R.id.zxing_decode_failed) {
                    if (i9 != R.id.zxing_possible_result_points) {
                        return false;
                    }
                    List list = (List) message.obj;
                    BarcodeView barcodeView2 = (BarcodeView) obj2;
                    O5.a aVar2 = barcodeView2.f24559k0;
                    if (aVar2 != null && barcodeView2.f24558j0 != 1) {
                        aVar2.c(list);
                    }
                }
                return true;
            case 4:
                int i10 = message.what;
                Object obj3 = this.f3655H;
                if (i10 != R.id.zxing_prewiew_size_ready) {
                    if (i10 == R.id.zxing_camera_error) {
                        Exception exc = (Exception) message.obj;
                        O5.g gVar = (O5.g) obj3;
                        if (gVar.f5578G != null) {
                            gVar.c();
                            gVar.f5602h0.b(exc);
                        }
                    } else if (i10 == R.id.zxing_camera_closed) {
                        ((O5.g) obj3).f5602h0.a();
                    }
                    return false;
                }
                O5.g gVar2 = (O5.g) obj3;
                t tVar = (t) message.obj;
                gVar2.f5591T = tVar;
                t tVar2 = gVar2.f5590S;
                if (tVar2 != null) {
                    if (tVar == null || (lVar = gVar2.f5588Q) == null) {
                        gVar2.f5595a0 = null;
                        gVar2.f5594W = null;
                        gVar2.f5592U = null;
                        throw new IllegalStateException("containerSize or previewSize is not set yet");
                    }
                    Rect rectB = lVar.f5968c.b(tVar, lVar.f5966a);
                    if (rectB.width() > 0 && rectB.height() > 0) {
                        gVar2.f5592U = rectB;
                        Rect rect = new Rect(0, 0, tVar2.f5638G, tVar2.f5639H);
                        Rect rect2 = gVar2.f5592U;
                        Rect rect3 = new Rect(rect);
                        rect3.intersect(rect2);
                        if (gVar2.f5596b0 != null) {
                            rect3.inset(Math.max(0, (rect3.width() - gVar2.f5596b0.f5638G) / 2), Math.max(0, (rect3.height() - gVar2.f5596b0.f5639H) / 2));
                        } else {
                            int iMin = (int) Math.min(((double) rect3.width()) * gVar2.f5597c0, ((double) rect3.height()) * gVar2.f5597c0);
                            rect3.inset(iMin, iMin);
                            if (rect3.height() > rect3.width()) {
                                rect3.inset(0, (rect3.height() - rect3.width()) / 2);
                            }
                        }
                        gVar2.f5594W = rect3;
                        Rect rect4 = new Rect(gVar2.f5594W);
                        Rect rect5 = gVar2.f5592U;
                        rect4.offset(-rect5.left, -rect5.top);
                        int i11 = rect4.left;
                        int i12 = tVar.f5638G;
                        int iWidth = (i11 * i12) / gVar2.f5592U.width();
                        int i13 = rect4.top;
                        int i14 = tVar.f5639H;
                        Rect rect6 = new Rect(iWidth, (i13 * i14) / gVar2.f5592U.height(), (rect4.right * i12) / gVar2.f5592U.width(), (rect4.bottom * i14) / gVar2.f5592U.height());
                        gVar2.f5595a0 = rect6;
                        if (rect6.width() <= 0 || gVar2.f5595a0.height() <= 0) {
                            gVar2.f5595a0 = null;
                            gVar2.f5594W = null;
                            Log.w("g", "Preview frame is too small");
                        } else {
                            gVar2.f5602h0.c();
                        }
                    }
                    gVar2.requestLayout();
                    gVar2.f();
                }
                return true;
            case 5:
                int i15 = message.what;
                Object obj4 = this.f3655H;
                if (i15 == R.id.zxing_decode) {
                    o oVar = (o) obj4;
                    u uVar = (u) message.obj;
                    oVar.getClass();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    Rect rect7 = oVar.f5631f;
                    uVar.f5643d = rect7;
                    P2.b bVar3 = uVar.f5640a;
                    if (rect7 == null) {
                        jVar = null;
                    } else {
                        int i16 = uVar.f5642c;
                        if (i16 == 90) {
                            byte[] bArr = bVar3.f5881b;
                            int i17 = bVar3.f5882c;
                            int i18 = bVar3.f5883d;
                            byte[] bArr2 = new byte[i17 * i18];
                            int i19 = 0;
                            for (int i20 = 0; i20 < i17; i20++) {
                                for (int i21 = i18 - 1; i21 >= 0; i21--) {
                                    bArr2[i19] = bArr[(i21 * i17) + i20];
                                    i19++;
                                }
                            }
                            bVar = new P2.b(bVar3.f5883d, bArr2, bVar3.f5882c, 4);
                        } else if (i16 == 180) {
                            byte[] bArr3 = bVar3.f5881b;
                            int i22 = bVar3.f5882c * bVar3.f5883d;
                            byte[] bArr4 = new byte[i22];
                            int i23 = i22 - 1;
                            for (int i24 = 0; i24 < i22; i24++) {
                                bArr4[i23] = bArr3[i24];
                                i23--;
                            }
                            bVar = new P2.b(bVar3.f5882c, bArr4, bVar3.f5883d, 4);
                        } else if (i16 != 270) {
                            bVar3.getClass();
                            bVar = bVar3;
                        } else {
                            byte[] bArr5 = bVar3.f5881b;
                            int i25 = bVar3.f5882c;
                            int i26 = bVar3.f5883d;
                            int i27 = i25 * i26;
                            byte[] bArr6 = new byte[i27];
                            int i28 = i27 - 1;
                            for (int i29 = 0; i29 < i25; i29++) {
                                for (int i30 = i26 - 1; i30 >= 0; i30--) {
                                    bArr6[i28] = bArr5[(i30 * i25) + i29];
                                    i28--;
                                }
                            }
                            bVar = new P2.b(bVar3.f5883d, bArr6, bVar3.f5882c, 4);
                        }
                        Rect rect8 = uVar.f5643d;
                        int iWidth2 = rect8.width();
                        int iHeight = rect8.height();
                        byte[] bArr7 = new byte[iWidth2 * iHeight];
                        int i31 = (rect8.top * bVar.f5882c) + rect8.left;
                        for (int i32 = 0; i32 < iHeight; i32++) {
                            System.arraycopy(bVar.f5881b, i31, bArr7, i32 * iWidth2, iWidth2);
                            i31 += bVar.f5882c;
                        }
                        jVar = new p130q5.j(bArr7, iWidth2, iHeight, iWidth2, iHeight);
                    }
                    if (jVar != null) {
                        O5.l lVar2 = oVar.f5629d;
                        p096m2.l lVarB = lVar2.b(jVar);
                        k kVar = lVar2.f5622a;
                        lVar2.f5623b.clear();
                        try {
                            if (kVar instanceof p130q5.h) {
                                p130q5.h hVar = (p130q5.h) kVar;
                                if (hVar.f29622b == null) {
                                    hVar.e(null);
                                }
                                mVarB = hVar.d(lVarB);
                            } else {
                                mVarB = kVar.b(lVarB);
                            }
                        } catch (Exception unused) {
                        } finally {
                            kVar.a();
                        }
                    }
                    Handler handler = oVar.f5630e;
                    if (mVarB != null) {
                        Log.d("o", "Found barcode in " + (System.currentTimeMillis() - jCurrentTimeMillis) + " ms");
                        if (handler != null) {
                            O5.b bVar4 = new O5.b();
                            bVar4.f5570a = mVarB;
                            bVar4.f5571b = uVar;
                            Message messageObtain = Message.obtain(handler, R.id.zxing_decode_succeeded, bVar4);
                            messageObtain.setData(new Bundle());
                            messageObtain.sendToTarget();
                        }
                    } else if (handler != null) {
                        Message.obtain(handler, R.id.zxing_decode_failed).sendToTarget();
                    }
                    if (handler != null) {
                        O5.l lVar3 = oVar.f5629d;
                        lVar3.getClass();
                        ArrayList<p130q5.o> arrayList = new ArrayList(lVar3.f5623b);
                        ArrayList arrayList2 = new ArrayList(arrayList.size());
                        for (p130q5.o oVar2 : arrayList) {
                            float f8 = 1;
                            float f9 = oVar2.f29645a * f8;
                            Rect rect9 = uVar.f5643d;
                            float f10 = f9 + rect9.left;
                            float f11 = (oVar2.f29646b * f8) + rect9.top;
                            if (uVar.f5644e) {
                                f10 = bVar3.f5882c - f10;
                            }
                            arrayList2.add(new p130q5.o(f10, f11));
                        }
                        Message.obtain(handler, R.id.zxing_possible_result_points, arrayList2).sendToTarget();
                    }
                    P5.f fVar = oVar.f5626a;
                    fVar.f5939h.post(new P5.d(fVar, oVar.f5635j, 0));
                } else if (i15 == R.id.zxing_preview_failed) {
                    o oVar3 = (o) obj4;
                    P5.f fVar2 = oVar3.f5626a;
                    fVar2.f5939h.post(new P5.d(fVar2, oVar3.f5635j, 0));
                }
                return true;
            default:
                int i33 = message.what;
                P5.b bVar5 = (P5.b) this.f3655H;
                ArrayList arrayList3 = P5.b.f5918g;
                bVar5.getClass();
                if (i33 != 1) {
                    return false;
                }
                bVar5.b();
                return true;
        }
    }

    public /* synthetic */ g(Object obj, int i8) {
        this.f3654G = i8;
        this.f3655H = obj;
    }
}
