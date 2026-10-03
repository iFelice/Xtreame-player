package U0;

import B0.C0073x;
import C0.C0077b;
import Z3.C0433o;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.job.JobParameters;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.graphics.YuvImage;
import android.graphics.drawable.ColorDrawable;
import android.os.Process;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.media3.ui.PlayerView;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import b7.ViewOnClickListenerC0502b;
import b7.ViewOnClickListenerC0507c1;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.google.android.gms.internal.atv_ads_framework.x0;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import org.eclipse.paho.client.mqttv3.MqttException;
import org.eclipse.paho.client.mqttv3.MqttMessage;
import p039f.ExecutorC3005u;
import p094m0.w0;
import pe.hf.black20.PlayStreamEPGActivity;
import pe.hf.black20.R;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f6835G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f6836H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f6837I;

    public /* synthetic */ r(int i8, Object obj, Object obj2) {
        this.f6835G = i8;
        this.f6837I = obj;
        this.f6836H = obj2;
    }

    private final void a() {
        P1.q qVar = (P1.q) this.f6837I;
        String[] strArr = (String[]) this.f6836H;
        int i8 = P1.o.f5819H;
        q0.h(qVar, "this$0");
        q0.h(strArr, "$tables");
        P1.l lVar = qVar.f5823b;
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        lVar.getClass();
        q0.h(strArr2, "tables");
        synchronized (lVar.f5811j) {
            Iterator it = lVar.f5811j.iterator();
            while (true) {
                p101n.e eVar = (p101n.e) it;
                if (eVar.hasNext()) {
                    Map.Entry entry = (Map.Entry) eVar.next();
                    q0.g(entry, "(observer, wrapper)");
                    P1.n nVar = (P1.n) entry.getKey();
                    nVar.getClass();
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = 2;
        int i9 = 0;
        String absolutePath = null;
        switch (this.f6835G) {
            case 0:
                ((O) this.f6837I).g((w0) this.f6836H);
                return;
            case 1:
                x0 x0Var = (x0) this.f6837I;
                w0 w0Var = (w0) this.f6836H;
                N n7 = (N) x0Var.f22391I;
                String str = p117p0.M.f28050a;
                B0.O o4 = ((B0.L) n7).f743G;
                o4.f774L0 = w0Var;
                o4.f785S.l(25, new C0073x(w0Var, 13));
                return;
            case 2:
                x0 x0Var2 = (x0) this.f6837I;
                Exception exc = (Exception) this.f6836H;
                N n8 = (N) x0Var2.f22391I;
                String str2 = p117p0.M.f28050a;
                C0.A a8 = (C0.A) ((B0.L) n8).f743G.f790X;
                C0077b c0077bT = a8.T();
                a8.U(c0077bT, 1030, new C0.v(c0077bT, exc, 0));
                return;
            case 3:
                x0 x0Var3 = (x0) this.f6837I;
                String str3 = (String) this.f6836H;
                N n9 = (N) x0Var3.f22391I;
                String str4 = p117p0.M.f28050a;
                C0.A a9 = (C0.A) ((B0.L) n9).f743G.f790X;
                C0077b c0077bT2 = a9.T();
                a9.U(c0077bT2, 1019, new C0.s(c0077bT2, str3, 1));
                return;
            case 4:
                V0.k kVar = (V0.k) this.f6837I;
                SurfaceTexture surfaceTexture = (SurfaceTexture) this.f6836H;
                SurfaceTexture surfaceTexture2 = kVar.f7071M;
                Surface surface = kVar.f7072N;
                Surface surface2 = new Surface(surfaceTexture);
                kVar.f7071M = surfaceTexture;
                kVar.f7072N = surface2;
                Iterator it = kVar.f7065G.iterator();
                while (it.hasNext()) {
                    ((B0.L) it.next()).f743G.V(surface2);
                }
                if (surfaceTexture2 != null) {
                    surfaceTexture2.release();
                }
                if (surface != null) {
                    surface.release();
                    return;
                }
                return;
            case 5:
                PlayerView.a((PlayerView) this.f6837I, (Bitmap) this.f6836H);
                return;
            case 6:
                a();
                return;
            case 7:
                Runnable runnable = (Runnable) this.f6837I;
                ExecutorC3005u executorC3005u = (ExecutorC3005u) this.f6836H;
                q0.h(runnable, "$command");
                q0.h(executorC3005u, "this$0");
                try {
                    runnable.run();
                    return;
                } finally {
                    executorC3005u.b();
                }
            case 8:
                p034e2.A a10 = (p034e2.A) this.f6837I;
                D4.b bVar = (D4.b) this.f6836H;
                if (a10.f24795W.f27864G instanceof p112o2.a) {
                    bVar.cancel(true);
                    return;
                }
                return;
            case 9:
                List<p074j2.b> list = (List) this.f6837I;
                p082k2.f fVar = (p082k2.f) this.f6836H;
                q0.h(list, "$listenersList");
                q0.h(fVar, "this$0");
                for (p074j2.b bVar2 : list) {
                    Object obj = fVar.f25924e;
                    bVar2.f25691d = obj;
                    bVar2.d(bVar2.f25692e, obj);
                }
                return;
            case 10:
                p104n2.s sVar = (p104n2.s) this.f6837I;
                p112o2.j jVar = (p112o2.j) this.f6836H;
                if (sVar.f27463G.f27864G instanceof p112o2.a) {
                    jVar.cancel(true);
                    return;
                } else {
                    jVar.l(sVar.f27466J.getForegroundInfoAsync());
                    return;
                }
            case 11:
                ConstraintTrackingWorker constraintTrackingWorker = (ConstraintTrackingWorker) this.f6837I;
                D4.b bVar3 = (D4.b) this.f6836H;
                q0.h(constraintTrackingWorker, "this$0");
                q0.h(bVar3, "$innerFuture");
                synchronized (constraintTrackingWorker.f9803L) {
                    try {
                        if (constraintTrackingWorker.f9804M) {
                            p112o2.j jVar2 = constraintTrackingWorker.f9805N;
                            q0.g(jVar2, "future");
                            String str5 = p127q2.a.f29573a;
                            jVar2.j(new p027d2.j());
                        } else {
                            constraintTrackingWorker.f9805N.l(bVar3);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            case 12:
                JobInfoSchedulerService jobInfoSchedulerService = (JobInfoSchedulerService) this.f6837I;
                JobParameters jobParameters = (JobParameters) this.f6836H;
                int i10 = JobInfoSchedulerService.f11631G;
                jobInfoSchedulerService.jobFinished(jobParameters, false);
                return;
            case 13:
                N4.a aVar = (N4.a) this.f6837I;
                Runnable runnable2 = (Runnable) this.f6836H;
                aVar.getClass();
                Process.setThreadPriority(0);
                aVar.getClass();
                runnable2.run();
                return;
            case 14:
                Callable callable = (Callable) this.f6837I;
                C0433o c0433o = (C0433o) this.f6836H;
                try {
                    Object objCall = callable.call();
                    N4.c cVar = (N4.c) c0433o.f8372H;
                    int i11 = N4.c.f4942N;
                    cVar.i(objCall);
                    return;
                } catch (Exception e8) {
                    N4.c cVar2 = (N4.c) c0433o.f8372H;
                    int i12 = N4.c.f4942N;
                    cVar2.j(e8);
                    return;
                }
            case 15:
                A0.O.I(this.f6837I);
                throw null;
            case 16:
            case 17:
            default:
                String str6 = (String) this.f6837I;
                String str7 = (String) this.f6836H;
                String str8 = i7.b.f25585a;
                try {
                    i7.b.f25586b.publish(str7, new MqttMessage(str6.getBytes()));
                    return;
                } catch (MqttException unused) {
                    return;
                }
            case 18:
                C0433o c0433o2 = (C0433o) this.f6837I;
                O5.b bVar4 = (O5.b) this.f6836H;
                O5.k kVar2 = (O5.k) c0433o2.f8372H;
                boolean z7 = kVar2.f5612d;
                Activity activity = kVar2.f5609a;
                if (z7) {
                    O5.u uVar = bVar4.f5571b;
                    P2.b bVar5 = uVar.f5640a;
                    Rect rect = new Rect(0, 0, bVar5.f5882c, bVar5.f5883d);
                    YuvImage yuvImage = new YuvImage(bVar5.f5881b, uVar.f5641b, bVar5.f5882c, bVar5.f5883d, null);
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    yuvImage.compressToJpeg(rect, 90, byteArrayOutputStream);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inSampleSize = 2;
                    Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
                    int i13 = uVar.f5642c;
                    if (i13 != 0) {
                        Matrix matrix = new Matrix();
                        matrix.postRotate(i13);
                        bitmapDecodeByteArray = Bitmap.createBitmap(bitmapDecodeByteArray, 0, 0, bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight(), matrix, false);
                    }
                    try {
                        File fileCreateTempFile = File.createTempFile("barcodeimage", ".jpg", activity.getCacheDir());
                        FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                        bitmapDecodeByteArray.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                        fileOutputStream.close();
                        absolutePath = fileCreateTempFile.getAbsolutePath();
                    } catch (IOException e9) {
                        Log.w("k", "Unable to create temporary file and store bitmap! " + e9);
                    }
                    break;
                }
                Intent intent = new Intent("com.google.zxing.client.android.SCAN");
                intent.addFlags(524288);
                intent.putExtra("SCAN_RESULT", bVar4.f5570a.f29629a);
                p130q5.m mVar = bVar4.f5570a;
                intent.putExtra("SCAN_RESULT_FORMAT", mVar.f29632d.toString());
                byte[] bArr = mVar.f29630b;
                if (bArr != null && bArr.length > 0) {
                    intent.putExtra("SCAN_RESULT_BYTES", bArr);
                }
                Map map = mVar.f29633e;
                if (map != null) {
                    p130q5.n nVar = p130q5.n.f29640M;
                    if (map.containsKey(nVar)) {
                        intent.putExtra("SCAN_RESULT_UPC_EAN_EXTENSION", map.get(nVar).toString());
                    }
                    Number number = (Number) map.get(p130q5.n.f29634G);
                    if (number != null) {
                        intent.putExtra("SCAN_RESULT_ORIENTATION", number.intValue());
                    }
                    String str9 = (String) map.get(p130q5.n.f29636I);
                    if (str9 != null) {
                        intent.putExtra("SCAN_RESULT_ERROR_CORRECTION_LEVEL", str9);
                    }
                    Iterable iterable = (Iterable) map.get(p130q5.n.f29635H);
                    if (iterable != null) {
                        Iterator it2 = iterable.iterator();
                        while (it2.hasNext()) {
                            intent.putExtra("SCAN_RESULT_BYTE_SEGMENTS_" + i9, (byte[]) it2.next());
                            i9++;
                        }
                    }
                }
                if (absolutePath != null) {
                    intent.putExtra("SCAN_RESULT_IMAGE_PATH", absolutePath);
                }
                activity.setResult(-1, intent);
                kVar2.a();
                return;
            case 19:
                p039f.G g8 = (p039f.G) this.f6837I;
                Intent intent2 = (Intent) this.f6836H;
                int i14 = p039f.G.f24902c;
                g8.getClass();
                if (intent2.hasExtra("what")) {
                    String stringExtra = intent2.getStringExtra("what");
                    boolean zEquals = stringExtra.equals("msg");
                    Object obj2 = g8.f24904b;
                    if (zEquals) {
                        if (intent2.getStringExtra("success").equals("1")) {
                            PlayStreamEPGActivity playStreamEPGActivity = (PlayStreamEPGActivity) obj2;
                            playStreamEPGActivity.f28933n0 = intent2.getStringExtra("msg_txt");
                            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
                            String str10 = simpleDateFormat.format(new Date());
                            if (!playStreamEPGActivity.f28909f0.contains("last_msg_display")) {
                                if (playStreamEPGActivity.isFinishing()) {
                                    return;
                                }
                                PlayStreamEPGActivity.t(playStreamEPGActivity, str10);
                                return;
                            }
                            try {
                                if (Methods.j(simpleDateFormat.parse(((PlayStreamEPGActivity) obj2).f28909f0.getString("last_msg_display", str10)), simpleDateFormat.parse(str10)) <= 2 || ((PlayStreamEPGActivity) obj2).isFinishing()) {
                                    return;
                                }
                                PlayStreamEPGActivity.t((PlayStreamEPGActivity) obj2, str10);
                                return;
                            } catch (ParseException unused2) {
                                Log.d("XCIPTV_TAG", "Time parse error");
                                return;
                            }
                        }
                        return;
                    }
                    if (!stringExtra.equals("pr")) {
                        if (stringExtra.equals("ann")) {
                            String str11 = PlayStreamEPGActivity.THEME;
                            ((PlayStreamEPGActivity) obj2).L();
                            return;
                        }
                        return;
                    }
                    PlayStreamEPGActivity playStreamEPGActivity2 = (PlayStreamEPGActivity) obj2;
                    if (playStreamEPGActivity2.isFinishing()) {
                        return;
                    }
                    String stringExtra2 = intent2.getStringExtra("title");
                    String stringExtra3 = intent2.getStringExtra("desc");
                    String stringExtra4 = intent2.getStringExtra("time");
                    PlayStreamEPGActivity playStreamEPGActivity3 = playStreamEPGActivity2.f28906e0;
                    View viewInflate = LayoutInflater.from(playStreamEPGActivity3).inflate(R.layout.xciptv_dialog_program_reminder_popup, (ViewGroup) null);
                    AlertDialog alertDialogCreate = new AlertDialog.Builder(playStreamEPGActivity3).create();
                    TextView textView = (TextView) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.txt_title);
                    TextView textView2 = (TextView) viewInflate.findViewById(R.id.txt_desc);
                    TextView textView3 = (TextView) viewInflate.findViewById(R.id.txt_time);
                    textView.setText(stringExtra2);
                    textView2.setText(stringExtra3);
                    textView3.setText(stringExtra4);
                    Button button = (Button) viewInflate.findViewById(R.id.button_yes);
                    button.setOnClickListener(new ViewOnClickListenerC0507c1(playStreamEPGActivity2, alertDialogCreate, i8));
                    ((Button) viewInflate.findViewById(R.id.button_no)).setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 4));
                    button.setFocusable(true);
                    button.requestFocus();
                    alertDialogCreate.show();
                    return;
                }
                return;
        }
    }
}
