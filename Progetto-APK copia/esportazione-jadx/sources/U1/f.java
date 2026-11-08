package U1;

import C2.s;
import D0.U;
import F2.E;
import F2.F;
import F2.o;
import android.content.res.AssetFileDescriptor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.Path;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.util.Log;
import android.view.View;
import com.google.android.gms.internal.measurement.A3;
import com.google.android.gms.internal.measurement.A4;
import com.google.android.gms.internal.measurement.C2536b4;
import com.google.android.gms.internal.measurement.C2578i4;
import com.google.android.gms.internal.measurement.C2583j3;
import com.google.android.gms.internal.measurement.C2590k4;
import com.google.android.gms.internal.measurement.C2595l3;
import com.google.android.gms.internal.measurement.C2596l4;
import com.google.android.gms.internal.measurement.C2608n4;
import com.google.android.gms.internal.measurement.C2618p3;
import com.google.android.gms.internal.measurement.C2627r3;
import com.google.android.gms.internal.measurement.C2632s3;
import com.google.android.gms.internal.measurement.C2642u3;
import com.google.android.gms.internal.measurement.C2662y3;
import com.google.android.gms.internal.measurement.C4;
import com.google.android.gms.internal.measurement.D4;
import com.google.android.gms.internal.measurement.E3;
import com.google.android.gms.internal.measurement.E4;
import com.google.android.gms.internal.measurement.F3;
import com.google.android.gms.internal.measurement.F4;
import com.google.android.gms.internal.measurement.G3;
import com.google.android.gms.internal.measurement.InterfaceC2530a4;
import com.google.android.gms.internal.measurement.InterfaceC2589k3;
import com.google.android.gms.internal.measurement.InterfaceC2602m4;
import com.google.android.gms.internal.measurement.InterfaceC2623q3;
import com.google.android.gms.internal.measurement.InterfaceC2667z3;
import com.google.android.gms.internal.measurement.N3;
import com.google.android.gms.internal.measurement.O3;
import com.google.android.gms.internal.measurement.P3;
import com.google.android.gms.internal.measurement.Q3;
import com.google.android.gms.internal.measurement.R3;
import com.google.android.gms.internal.measurement.S3;
import com.google.android.gms.internal.measurement.Z3;
import com.google.android.gms.internal.measurement.o4;
import com.google.android.gms.internal.measurement.p4;
import com.google.android.gms.internal.measurement.q4;
import com.google.android.gms.internal.measurement.r4;
import com.google.android.gms.internal.measurement.s4;
import com.google.android.gms.internal.measurement.t4;
import com.google.android.gms.internal.measurement.u4;
import com.google.android.gms.internal.measurement.v4;
import com.google.android.gms.internal.measurement.w4;
import com.google.api.Service;
import java.io.File;
import java.io.IOException;
import java.net.ProxySelector;
import java.nio.ByteBuffer;
import java.util.List;
import p021c4.C;
import p173w2.l;
import p190y4.t;
import pe.hf.black20.R;
import y2.k;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public class f implements Q2.a, A2.a, B2.b, p173w2.c, s, o, F, t, C {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f6909G;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ f() {
        this(28, null);
        this.f6909G = 28;
    }

    public static Path f(float f8, float f9, float f10, float f11) {
        Path path = new Path();
        path.moveTo(f8, f9);
        path.lineTo(f10, f11);
        return path;
    }

    public static c h(U u7, SQLiteDatabase sQLiteDatabase) {
        q0.h(u7, "refHolder");
        q0.h(sQLiteDatabase, "sqLiteDatabase");
        c cVar = (c) u7.f1868H;
        if (cVar != null && q0.c(cVar.f6903G, sQLiteDatabase)) {
            return cVar;
        }
        c cVar2 = new c(sQLiteDatabase);
        u7.f1868H = cVar2;
        return cVar2;
    }

    @Override // A2.a
    public File a(p173w2.i iVar) {
        return null;
    }

    @Override // F2.F
    public void e(MediaExtractor mediaExtractor, Object obj) throws IOException {
        switch (this.f6909G) {
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
                mediaExtractor.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
                break;
            default:
                mediaExtractor.setDataSource(new E((ByteBuffer) obj));
                break;
        }
    }

    public float g(View view) {
        Float f8 = (Float) view.getTag(R.id.save_non_transition_alpha);
        return f8 != null ? view.getAlpha() / f8.floatValue() : view.getAlpha();
    }

    @Override // p190y4.t
    public Object get() {
        switch (this.f6909G) {
            case 0:
                return new p190y4.s();
            default:
                return ProxySelector.getDefault();
        }
    }

    public void i(View view, int i8, int i9, int i10, int i11) {
        view.setLeft(i8);
        view.setTop(i9);
        view.setRight(i10);
        view.setBottom(i11);
    }

    @Override // Q2.a
    public Object m() {
        return new y2.C();
    }

    @Override // p173w2.c
    public boolean n(Object obj, File file, l lVar) throws Throwable {
        try {
            P2.c.d((ByteBuffer) obj, file);
            return true;
        } catch (IOException e8) {
            if (Log.isLoggable("ByteBufferEncoder", 3)) {
                Log.d("ByteBufferEncoder", "Failed to write data", e8);
            }
            return false;
        }
    }

    @Override // F2.F
    public void s(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
        switch (this.f6909G) {
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
                mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
                break;
            default:
                mediaMetadataRetriever.setDataSource(new E((ByteBuffer) obj));
                break;
        }
    }

    @Override // p021c4.C
    public Object zza() {
        switch (this.f6909G) {
            case 0:
                List list = p021c4.E.f10764a;
                ((G3) ((F3) E3.f22909H.f22910G.f31450G)).getClass();
                Boolean bool = (Boolean) G3.f22924b.b();
                bool.getClass();
                return bool;
            case 1:
                List list2 = p021c4.E.f10764a;
                ((C2627r3) ((InterfaceC2623q3) C2618p3.f23241H.f23242G.f31450G)).getClass();
                Boolean bool2 = (Boolean) C2627r3.f23248a.b();
                bool2.getClass();
                return bool2;
            case 2:
                List list3 = p021c4.E.f10764a;
                ((w4) ((v4) u4.f23338H.f23339G.f31450G)).getClass();
                Boolean bool3 = (Boolean) w4.f23408a.b();
                bool3.getClass();
                return bool3;
            case 3:
                List list4 = p021c4.E.f10764a;
                ((C4) A4.f22864H.get()).getClass();
                Boolean bool4 = (Boolean) C4.f22891g.b();
                bool4.getClass();
                return bool4;
            case 4:
                List list5 = p021c4.E.f10764a;
                ((C4) A4.f22864H.get()).getClass();
                Boolean bool5 = (Boolean) C4.f22887c.b();
                bool5.getClass();
                return bool5;
            case 5:
                List list6 = p021c4.E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return Integer.valueOf((int) ((Long) C2642u3.f23303f0.b()).longValue());
            case 6:
                List list7 = p021c4.E.f10764a;
                ((C4) A4.f22864H.get()).getClass();
                Boolean bool6 = (Boolean) C4.f22892h.b();
                bool6.getClass();
                return bool6;
            case 7:
                List list8 = p021c4.E.f10764a;
                ((C4) A4.f22864H.get()).getClass();
                Boolean bool7 = (Boolean) C4.f22889e.b();
                bool7.getClass();
                return bool7;
            case 8:
                List list9 = p021c4.E.f10764a;
                ((C4) A4.f22864H.get()).getClass();
                Boolean bool8 = (Boolean) C4.f22890f.b();
                bool8.getClass();
                return bool8;
            case 9:
                List list10 = p021c4.E.f10764a;
                ((C4) A4.f22864H.get()).getClass();
                Boolean bool9 = (Boolean) C4.f22888d.b();
                bool9.getClass();
                return bool9;
            case 10:
                List list11 = p021c4.E.f10764a;
                ((C4) A4.f22864H.get()).getClass();
                Boolean bool10 = (Boolean) C4.f22886b.b();
                bool10.getClass();
                return bool10;
            case 11:
                List list12 = p021c4.E.f10764a;
                ((C4) A4.f22864H.get()).getClass();
                Boolean bool11 = (Boolean) C4.f22885a.b();
                bool11.getClass();
                return bool11;
            case 12:
                List list13 = p021c4.E.f10764a;
                ((C2595l3) ((InterfaceC2589k3) C2583j3.f23171H.f23172G.f31450G)).getClass();
                Boolean bool12 = (Boolean) C2595l3.f23194a.b();
                bool12.getClass();
                return bool12;
            case 13:
                ((C2536b4) ((InterfaceC2530a4) Z3.f23066H.f23067G.f31450G)).getClass();
                Boolean bool13 = (Boolean) C2536b4.f23105a.b();
                bool13.getClass();
                return bool13;
            case 14:
                List list14 = p021c4.E.f10764a;
                ((C2590k4) C2578i4.f23168H.get()).getClass();
                Boolean bool14 = (Boolean) C2590k4.f23188f.b();
                bool14.getClass();
                return bool14;
            case 15:
                List list15 = p021c4.E.f10764a;
                ((C2590k4) C2578i4.f23168H.get()).getClass();
                Boolean bool15 = (Boolean) C2590k4.f23183a.b();
                bool15.getClass();
                return bool15;
            case 16:
                List list16 = p021c4.E.f10764a;
                ((C2590k4) C2578i4.f23168H.get()).getClass();
                Boolean bool16 = (Boolean) C2590k4.f23190h.b();
                bool16.getClass();
                return bool16;
            case 17:
                List list17 = p021c4.E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return Integer.valueOf((int) ((Long) C2642u3.f23311j0.b()).longValue());
            case 18:
                List list18 = p021c4.E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return Integer.valueOf((int) ((Long) C2642u3.f23313k0.b()).longValue());
            case 19:
                List list19 = p021c4.E.f10764a;
                ((C2590k4) C2578i4.f23168H.get()).getClass();
                Boolean bool17 = (Boolean) C2590k4.f23186d.b();
                bool17.getClass();
                return bool17;
            case 20:
                List list20 = p021c4.E.f10764a;
                ((C2608n4) ((InterfaceC2602m4) C2596l4.f23195H.f23196G.f31450G)).getClass();
                Boolean bool18 = (Boolean) C2608n4.f23222a.b();
                bool18.getClass();
                return bool18;
            case 21:
                List list21 = p021c4.E.f10764a;
                ((C2590k4) C2578i4.f23168H.get()).getClass();
                Boolean bool19 = (Boolean) C2590k4.f23185c.b();
                bool19.getClass();
                return bool19;
            case 22:
                ((t4) ((s4) r4.f23249H.f23250G.f31450G)).getClass();
                Boolean bool20 = (Boolean) t4.f23260a.b();
                bool20.getClass();
                return bool20;
            case 23:
                List list22 = p021c4.E.f10764a;
                ((F4) ((E4) D4.f22902H.f22903G.f31450G)).getClass();
                Boolean bool21 = (Boolean) F4.f22916a.b();
                bool21.getClass();
                return bool21;
            case 24:
                List list23 = p021c4.E.f10764a;
                ((q4) ((p4) o4.f23232H.f23233G.f31450G)).getClass();
                Boolean bool22 = (Boolean) q4.f23245a.b();
                bool22.getClass();
                return bool22;
            case 25:
                ((A3) ((InterfaceC2667z3) C2662y3.f23414H.f23415G.f31450G)).getClass();
                Boolean bool23 = (Boolean) A3.f22863c.b();
                bool23.getClass();
                return bool23;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                List list24 = p021c4.E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                Long l4 = (Long) C2642u3.f23292a.b();
                l4.getClass();
                return l4;
            case 27:
                ((A3) ((InterfaceC2667z3) C2662y3.f23414H.f23415G.f31450G)).getClass();
                Boolean bool24 = (Boolean) A3.f22861a.b();
                bool24.getClass();
                return bool24;
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                ((P3) ((O3) N3.f22974H.f22975G.f31450G)).getClass();
                Boolean bool25 = (Boolean) P3.f22982a.b();
                bool25.getClass();
                return bool25;
            default:
                ((S3) ((R3) Q3.f22986H.f22987G.f31450G)).getClass();
                Boolean bool26 = (Boolean) S3.f23005a.b();
                bool26.getClass();
                return bool26;
        }
    }

    public /* synthetic */ f(int i8) {
        this.f6909G = i8;
    }

    public /* synthetic */ f(int i8, Object obj) {
        this.f6909G = i8;
    }

    @Override // F2.o
    public void d() {
    }

    @Override // F2.o
    public void b(Bitmap bitmap, p196z2.d dVar) {
    }

    @Override // A2.a
    public void c(p173w2.i iVar, k kVar) {
    }
}
