package pe.hf.black20;

import B.f;
import B0.C0061m;
import B0.C0066p;
import B0.C0073x;
import B0.C0075z;
import B0.O;
import G0.j;
import O0.AbstractC0277a;
import O0.C0288l;
import O0.N;
import W0.p;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Html;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.media3.exoplayer.dash.DashMediaSource$Factory;
import androidx.media3.exoplayer.hls.HlsMediaSource$Factory;
import androidx.media3.ui.PlayerView;
import b7.AsyncTaskC0522h1;
import b7.C0516f1;
import b7.C0519g1;
import b7.C0532l;
import b7.C0535m;
import b7.C0549t;
import b7.RunnableC0513e1;
import b7.ViewOnClickListenerC0502b;
import b7.ViewOnClickListenerC0505c;
import b7.ViewOnClickListenerC0507c1;
import b7.W0;
import b7.X0;
import c7.a;
import c7.b;
import c7.c;
import com.bumptech.glide.l;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import d7.g;
import h7.i;
import java.io.UnsupportedEncodingException;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.DisconnectedBufferOptions;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.videolan.libvlc.LibVLC;
import org.videolan.libvlc.Media;
import org.videolan.libvlc.MediaPlayer;
import org.videolan.libvlc.interfaces.IVLCVout;
import org.videolan.libvlc.util.HWDecoderUtil;
import p000a.r;
import p039f.AbstractActivityC3000o;
import p039f.G;
import p039f.ViewOnClickListenerC2988c;
import p086l.C3061x;
import p086l.L0;
import p094m0.C3121d;
import p094m0.I;
import p094m0.j0;
import p094m0.k0;
import p117p0.M;
import p141s0.InterfaceC3183h;
import pe.hf.black20.PlayStreamEPGActivity;
import pe.hf.black20.R;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.util.Methods;
import pe.hf.black20.util.d;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class PlayStreamEPGActivity extends AbstractActivityC3000o implements d {

    /* JADX INFO: renamed from: Q2, reason: collision with root package name */
    public static String f28828Q2 = null;

    /* JADX INFO: renamed from: R2, reason: collision with root package name */
    public static InterfaceC3183h f28829R2 = null;
    public static final String THEME = "yes";
    public static final String logoIcon;

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public float f28830A0;

    /* JADX INFO: renamed from: A1, reason: collision with root package name */
    public Handler f28831A1;

    /* JADX INFO: renamed from: A2, reason: collision with root package name */
    public int f28832A2;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public ProgressBar f28833B0;

    /* JADX INFO: renamed from: B1, reason: collision with root package name */
    public W0 f28834B1;

    /* JADX INFO: renamed from: B2, reason: collision with root package name */
    public String f28835B2;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public ImageView f28836C0;

    /* JADX INFO: renamed from: C1, reason: collision with root package name */
    public Runnable f28837C1;

    /* JADX INFO: renamed from: C2, reason: collision with root package name */
    public ImageView f28838C2;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public TextView f28839D0;

    /* JADX INFO: renamed from: D1, reason: collision with root package name */
    public W0 f28840D1;

    /* JADX INFO: renamed from: D2, reason: collision with root package name */
    public String f28841D2;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public TextView f28842E0;

    /* JADX INFO: renamed from: E1, reason: collision with root package name */
    public Handler f28843E1;

    /* JADX INFO: renamed from: E2, reason: collision with root package name */
    public final boolean f28844E2;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public TextView f28845F0;

    /* JADX INFO: renamed from: F1, reason: collision with root package name */
    public W0 f28846F1;

    /* JADX INFO: renamed from: F2, reason: collision with root package name */
    public ArrayList f28847F2;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public FrameLayout f28848G0;

    /* JADX INFO: renamed from: G1, reason: collision with root package name */
    public String f28849G1;

    /* JADX INFO: renamed from: G2, reason: collision with root package name */
    public ImageView f28850G2;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public FrameLayout f28851H0;

    /* JADX INFO: renamed from: H1, reason: collision with root package name */
    public float f28852H1;

    /* JADX INFO: renamed from: H2, reason: collision with root package name */
    public ImageView f28853H2;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public FrameLayout f28854I0;

    /* JADX INFO: renamed from: I2, reason: collision with root package name */
    public PlayerView f28856I2;

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public FrameLayout f28857J0;

    /* JADX INFO: renamed from: J2, reason: collision with root package name */
    public O f28859J2;

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public FrameLayout f28860K0;

    /* JADX INFO: renamed from: K1, reason: collision with root package name */
    public ArrayList f28861K1;

    /* JADX INFO: renamed from: K2, reason: collision with root package name */
    public k0 f28862K2;

    /* JADX INFO: renamed from: L0, reason: collision with root package name */
    public c7.d f28863L0;

    /* JADX INFO: renamed from: L1, reason: collision with root package name */
    public ArrayList f28864L1;

    /* JADX INFO: renamed from: L2, reason: collision with root package name */
    public boolean f28865L2;

    /* JADX INFO: renamed from: M0, reason: collision with root package name */
    public b f28866M0;

    /* JADX INFO: renamed from: M2, reason: collision with root package name */
    public Handler f28868M2;

    /* JADX INFO: renamed from: N0, reason: collision with root package name */
    public c f28869N0;

    /* JADX INFO: renamed from: N2, reason: collision with root package name */
    public RunnableC0513e1 f28871N2;

    /* JADX INFO: renamed from: O0, reason: collision with root package name */
    public i f28872O0;

    /* JADX INFO: renamed from: O2, reason: collision with root package name */
    public final L0 f28874O2;

    /* JADX INFO: renamed from: P0, reason: collision with root package name */
    public int f28875P0;

    /* JADX INFO: renamed from: P2, reason: collision with root package name */
    public final G f28877P2;

    /* JADX INFO: renamed from: Q0, reason: collision with root package name */
    public GestureDetector f28878Q0;

    /* JADX INFO: renamed from: R0, reason: collision with root package name */
    public Handler f28880R0;

    /* JADX INFO: renamed from: S0, reason: collision with root package name */
    public Handler f28882S0;

    /* JADX INFO: renamed from: T0, reason: collision with root package name */
    public Handler f28884T0;

    /* JADX INFO: renamed from: U0, reason: collision with root package name */
    public Handler f28886U0;

    /* JADX INFO: renamed from: V0, reason: collision with root package name */
    public W0 f28888V0;

    /* JADX INFO: renamed from: W0, reason: collision with root package name */
    public W0 f28890W0;

    /* JADX INFO: renamed from: W1, reason: collision with root package name */
    public C0549t f28891W1;

    /* JADX INFO: renamed from: X0, reason: collision with root package name */
    public W0 f28892X0;

    /* JADX INFO: renamed from: X1, reason: collision with root package name */
    public TextView f28893X1;

    /* JADX INFO: renamed from: Y0, reason: collision with root package name */
    public W0 f28894Y0;

    /* JADX INFO: renamed from: Y1, reason: collision with root package name */
    public TextView f28895Y1;

    /* JADX INFO: renamed from: Z1, reason: collision with root package name */
    public TextView f28897Z1;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public int f28898a1;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public int f28900b1;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public SeekBar f28902c1;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    public String f28903c2;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public SeekBar f28904d1;

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    public ImageButton f28905d2;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public FrameLayout f28907e1;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    public SurfaceView f28908e2;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public SharedPreferences f28909f0;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    public MediaPlayer f28911f2;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public SharedPreferences.Editor f28912g0;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public ImageButton f28913g1;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    public LibVLC f28914g2;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public String f28915h0;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public ImageButton f28916h1;

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    public Handler f28917h2;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public ImageButton f28919i1;

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    public boolean f28920i2;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public String f28921j0;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public ImageButton f28922j1;

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    public String f28923j2;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public String f28924k0;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public ImageButton f28925k1;

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    public boolean f28926k2;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public String f28927l0;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public ImageButton f28928l1;

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    public String f28929l2;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public String f28930m0;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public ImageButton f28931m1;

    /* JADX INFO: renamed from: m2, reason: collision with root package name */
    public String f28932m2;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public String f28933n0;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public ImageButton f28934n1;

    /* JADX INFO: renamed from: n2, reason: collision with root package name */
    public int f28935n2;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public ImageButton f28937o1;

    /* JADX INFO: renamed from: o2, reason: collision with root package name */
    public String f28938o2;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public JSONArray f28939p0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public FrameLayout f28940p1;

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    public String f28941p2;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public JSONArray f28942q0;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public TextView f28943q1;

    /* JADX INFO: renamed from: q2, reason: collision with root package name */
    public String f28944q2;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public ListView f28945r0;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    public TextView f28946r1;

    /* JADX INFO: renamed from: r2, reason: collision with root package name */
    public String f28947r2;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public ListView f28948s0;

    /* JADX INFO: renamed from: s1, reason: collision with root package name */
    public TextView f28949s1;

    /* JADX INFO: renamed from: s2, reason: collision with root package name */
    public String f28950s2;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public String[] f28951t0;

    /* JADX INFO: renamed from: t1, reason: collision with root package name */
    public TextView f28952t1;

    /* JADX INFO: renamed from: t2, reason: collision with root package name */
    public Button f28953t2;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public String[] f28954u0;

    /* JADX INFO: renamed from: u1, reason: collision with root package name */
    public TextView f28955u1;

    /* JADX INFO: renamed from: u2, reason: collision with root package name */
    public FrameLayout f28956u2;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public FrameLayout f28957v0;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    public TextView f28958v1;

    /* JADX INFO: renamed from: v2, reason: collision with root package name */
    public boolean f28959v2;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public FrameLayout f28960w0;

    /* JADX INFO: renamed from: w1, reason: collision with root package name */
    public SeekBar f28961w1;

    /* JADX INFO: renamed from: w2, reason: collision with root package name */
    public boolean f28962w2;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public FrameLayout f28963x0;

    /* JADX INFO: renamed from: x2, reason: collision with root package name */
    public String f28965x2;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public FrameLayout f28966y0;

    /* JADX INFO: renamed from: y1, reason: collision with root package name */
    public Handler f28967y1;

    /* JADX INFO: renamed from: y2, reason: collision with root package name */
    public String f28968y2;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public FrameLayout f28969z0;

    /* JADX INFO: renamed from: z1, reason: collision with root package name */
    public Handler f28970z1;

    /* JADX INFO: renamed from: z2, reason: collision with root package name */
    public boolean f28971z2;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final PlayStreamEPGActivity f28906e0 = this;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public String f28918i0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public boolean f28936o0 = true;

    /* JADX INFO: renamed from: Z0, reason: collision with root package name */
    public boolean f28896Z0 = true;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public String f28910f1 = "stopped";

    /* JADX INFO: renamed from: x1, reason: collision with root package name */
    public int f28964x1 = 0;

    /* JADX INFO: renamed from: I1, reason: collision with root package name */
    public int f28855I1 = 0;

    /* JADX INFO: renamed from: J1, reason: collision with root package name */
    public ArrayList f28858J1 = new ArrayList();

    /* JADX INFO: renamed from: M1, reason: collision with root package name */
    public String f28867M1 = "no";

    /* JADX INFO: renamed from: N1, reason: collision with root package name */
    public int f28870N1 = 0;

    /* JADX INFO: renamed from: O1, reason: collision with root package name */
    public int f28873O1 = 0;

    /* JADX INFO: renamed from: P1, reason: collision with root package name */
    public int f28876P1 = 50000;

    /* JADX INFO: renamed from: Q1, reason: collision with root package name */
    public int f28879Q1 = 50000;

    /* JADX INFO: renamed from: R1, reason: collision with root package name */
    public int f28881R1 = 2500;

    /* JADX INFO: renamed from: S1, reason: collision with root package name */
    public int f28883S1 = DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT;

    /* JADX INFO: renamed from: T1, reason: collision with root package name */
    public String f28885T1 = "300";

    /* JADX INFO: renamed from: U1, reason: collision with root package name */
    public String f28887U1 = "1000";

    /* JADX INFO: renamed from: V1, reason: collision with root package name */
    public String f28889V1 = "1000";

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    public String f28899a2 = "no";

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    public String f28901b2 = "epg";

    static {
        new CookieManager().setCookiePolicy(CookiePolicy.ACCEPT_ALL);
        logoIcon = Methods.J();
    }

    public PlayStreamEPGActivity() {
        new ArrayList();
        this.f28903c2 = "default";
        this.f28911f2 = null;
        this.f28914g2 = null;
        this.f28920i2 = false;
        this.f28923j2 = "no";
        this.f28926k2 = false;
        this.f28929l2 = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f28932m2 = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f28935n2 = 0;
        this.f28941p2 = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f28944q2 = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f28947r2 = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f28950s2 = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f28959v2 = false;
        this.f28962w2 = false;
        this.f28965x2 = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f28968y2 = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f28971z2 = false;
        this.f28832A2 = 0;
        this.f28835B2 = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f28844E2 = true;
        this.f28874O2 = new L0(this, 4);
        this.f28877P2 = new G(this, 18);
    }

    public static void s(PlayStreamEPGActivity playStreamEPGActivity) {
        W0 w7 = playStreamEPGActivity.f28846F1;
        if (w7 != null) {
            playStreamEPGActivity.f28843E1.removeCallbacks(w7);
            playStreamEPGActivity.f28843E1.removeCallbacksAndMessages(null);
        }
        W0 w8 = playStreamEPGActivity.f28892X0;
        if (w8 != null) {
            playStreamEPGActivity.f28884T0.removeCallbacks(w8);
            playStreamEPGActivity.f28884T0.removeCallbacksAndMessages(null);
        }
        Handler handler = new Handler(Looper.getMainLooper());
        playStreamEPGActivity.f28884T0 = handler;
        W0 w9 = new W0(playStreamEPGActivity, 8);
        playStreamEPGActivity.f28892X0 = w9;
        handler.postDelayed(w9, 1500L);
    }

    public static void t(PlayStreamEPGActivity playStreamEPGActivity, String str) {
        PlayStreamEPGActivity playStreamEPGActivity2 = playStreamEPGActivity.f28906e0;
        View viewInflate = LayoutInflater.from(playStreamEPGActivity2).inflate(R.layout.xcip_dialog_single_btn, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(playStreamEPGActivity2).create();
        ((TextView) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#4f000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText("Message!\n" + playStreamEPGActivity.f28933n0);
        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
        button.setText("OK");
        button.setOnClickListener(new ViewOnClickListenerC0505c(playStreamEPGActivity, alertDialogCreate, str, 2));
        alertDialogCreate.show();
    }

    public final void A() {
        Handler handler = new Handler(Looper.getMainLooper());
        this.f28967y1 = handler;
        W0 w7 = new W0(this, 3);
        this.f28834B1 = w7;
        handler.postDelayed(w7, 0L);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:11:0x017b  */
    public final void B() {
        byte b8 = 1;
        this.f28962w2 = true;
        this.f28851H0.setVisibility(8);
        this.f28854I0.setVisibility(8);
        this.f28940p1.setVisibility(0);
        PlayStreamEPGActivity playStreamEPGActivity = this.f28906e0;
        int i8 = (Methods.T(playStreamEPGActivity) || Methods.P()) ? ((int) (((double) this.f28900b1) * 0.5d)) / 12 : this.f28898a1 / 8;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f28913g1.getLayoutParams();
        layoutParams.height = i8;
        layoutParams.width = i8;
        float f8 = this.f28830A0;
        layoutParams.setMargins((int) (f8 * 2.0f), 0, (int) (f8 * 5.0f), 0);
        this.f28913g1.setLayoutParams(layoutParams);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f28916h1.getLayoutParams();
        layoutParams2.height = i8;
        layoutParams2.width = i8;
        float f9 = this.f28830A0;
        layoutParams2.setMargins((int) (f9 * 2.0f), 0, (int) (f9 * 5.0f), 0);
        this.f28916h1.setLayoutParams(layoutParams2);
        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.f28919i1.getLayoutParams();
        layoutParams3.height = i8;
        layoutParams3.width = i8;
        float f10 = this.f28830A0;
        layoutParams3.setMargins((int) (f10 * 2.0f), 0, (int) (f10 * 5.0f), 0);
        this.f28919i1.setLayoutParams(layoutParams3);
        FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) this.f28925k1.getLayoutParams();
        layoutParams4.height = i8 - (i8 / 8);
        layoutParams4.width = i8;
        float f11 = this.f28830A0;
        layoutParams4.setMargins((int) (f11 * 2.0f), 0, (int) (f11 * 5.0f), 0);
        this.f28925k1.setLayoutParams(layoutParams4);
        FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) this.f28905d2.getLayoutParams();
        int i9 = i8 - (i8 / 7);
        layoutParams5.height = i9;
        layoutParams5.width = i9;
        float f12 = this.f28830A0;
        layoutParams5.setMargins((int) (10.0f * f12), 0, (int) (f12 * 15.0f), 0);
        this.f28905d2.setLayoutParams(layoutParams5);
        FrameLayout.LayoutParams layoutParams6 = (FrameLayout.LayoutParams) this.f28937o1.getLayoutParams();
        int i10 = i8 - (i8 / 5);
        layoutParams6.height = i10;
        layoutParams6.width = i10;
        float f13 = this.f28830A0;
        layoutParams6.setMargins((int) (f13 * 2.0f), 0, (int) (f13 * 5.0f), 0);
        this.f28937o1.setLayoutParams(layoutParams6);
        FrameLayout.LayoutParams layoutParams7 = (FrameLayout.LayoutParams) this.f28928l1.getLayoutParams();
        layoutParams7.height = i8;
        layoutParams7.width = i8;
        float f14 = this.f28830A0;
        layoutParams7.setMargins((int) (f14 * 2.0f), 0, (int) (f14 * 5.0f), 0);
        this.f28928l1.setLayoutParams(layoutParams7);
        FrameLayout.LayoutParams layoutParams8 = (FrameLayout.LayoutParams) this.f28931m1.getLayoutParams();
        layoutParams8.height = i10;
        layoutParams8.width = i10;
        float f15 = this.f28830A0;
        layoutParams8.setMargins((int) (f15 * 2.0f), 0, (int) (f15 * 5.0f), 0);
        this.f28931m1.setLayoutParams(layoutParams8);
        FrameLayout.LayoutParams layoutParams9 = (FrameLayout.LayoutParams) this.f28934n1.getLayoutParams();
        int i11 = i8 - (i8 / 6);
        layoutParams9.height = i11;
        layoutParams9.width = i11;
        float f16 = this.f28830A0;
        layoutParams9.setMargins((int) (f16 * 2.0f), 0, (int) (f16 * 5.0f), 0);
        this.f28934n1.setLayoutParams(layoutParams9);
        FrameLayout.LayoutParams layoutParams10 = (FrameLayout.LayoutParams) this.f28922j1.getLayoutParams();
        layoutParams10.height = i10;
        layoutParams10.width = i10;
        float f17 = this.f28830A0;
        layoutParams10.setMargins((int) (2.0f * f17), 0, (int) (f17 * 5.0f), 0);
        this.f28922j1.setLayoutParams(layoutParams10);
        O();
        String strC = q0.q().c("ORT_WHICH_CAT", "TV");
        strC.getClass();
        switch (strC.hashCode()) {
            case -1852509577:
                if (!strC.equals("SERIES")) {
                    b8 = -1;
                } else {
                    b8 = 0;
                }
                break;
            case 2690:
                if (!strC.equals("TV")) {
                    b8 = -1;
                }
                break;
            case 69371:
                if (!strC.equals("FAV")) {
                    b8 = -1;
                } else {
                    b8 = 2;
                }
                break;
            case 85163:
                if (!strC.equals("VOD")) {
                    b8 = -1;
                } else {
                    b8 = 3;
                }
                break;
            default:
                b8 = -1;
                break;
        }
        switch (b8) {
            case 0:
                this.f28966y0.setVisibility(8);
                this.f28913g1.requestFocus();
                break;
            case 1:
            case 2:
                this.f28922j1.requestFocus();
                if (Methods.T(playStreamEPGActivity) || Methods.P()) {
                    this.f28857J0.setVisibility(8);
                } else {
                    this.f28857J0.setVisibility(0);
                }
                this.f28966y0.setVisibility(8);
                break;
            case 3:
                this.f28966y0.setVisibility(0);
                this.f28913g1.requestFocus();
                break;
        }
    }

    public final void C() {
        MediaPlayer mediaPlayer = this.f28911f2;
        if (mediaPlayer != null) {
            IVLCVout vLCVout = mediaPlayer.getVLCVout();
            int i8 = this.f28900b1;
            vLCVout.setWindowSize(((int) (((double) i8) * 0.45d)) + ((int) (this.f28830A0 * 1.0f)), (int) (((double) i8) * 0.45d * 0.56d));
            this.f28911f2.setAspectRatio("16:9");
            this.f28911f2.setScale(0.0f);
        }
    }

    public final void D(String str) {
        if (!this.f28924k0.equals(this.f28965x2)) {
            this.f28965x2 = this.f28924k0;
            if (U2.z("ORT_WHICH_CAT", "TV", "VOD")) {
                this.f28952t1.setText(this.f28849G1);
            }
            if (U2.z("ORT_WHICH_CAT", "TV", "SERIES")) {
                this.f28952t1.setText(this.f28849G1);
                this.f28949s1.setText(this.f28915h0);
            }
        }
        f28828Q2 = str.replaceAll(" ", HttpUrl.FRAGMENT_ENCODE_SET);
        V();
        ArrayList arrayList = new ArrayList();
        arrayList.add("--input-fast-seek");
        arrayList.add("--http-reconnect");
        arrayList.add("--repeat");
        arrayList.add("--avcodec-hw=any");
        if (HWDecoderUtil.getAudioOutputFromDevice() == HWDecoderUtil.AudioOutput.OPENSLES) {
            arrayList.add("--aout=opensles");
        } else {
            arrayList.add("--aout=android_audiotrack");
        }
        arrayList.add("--audio-time-stretch");
        arrayList.add("--avcodec-skip-frame");
        arrayList.add("--avcodec-skip-idct");
        arrayList.add("--no-ts-trust-pcr");
        arrayList.add("--ts-seek-percent");
        arrayList.add("--no-ts-cc-check");
        this.f28914g2 = new LibVLC(this.f28906e0, arrayList);
        MediaPlayer mediaPlayer = new MediaPlayer(this.f28914g2);
        this.f28911f2 = mediaPlayer;
        mediaPlayer.setAudioDigitalOutputEnabled(true);
        Media media = new Media(this.f28914g2, Uri.parse(f28828Q2));
        media.addOption(this.f28885T1);
        media.addOption(this.f28889V1);
        media.addOption(":http-user-agent=" + this.f28932m2);
        if (this.f28926k2) {
            String str2 = this.f28909f0.getString("rec_path", null) + MqttTopic.TOPIC_LEVEL_SEPARATOR + this.f28915h0.replaceAll("[^a-zA-Z0-9]", HttpUrl.FRAGMENT_ENCODE_SET).replaceAll(" ", HttpUrl.FRAGMENT_ENCODE_SET) + Methods.F() + ".mp4";
            r.q("PlayStreamEPGActivity - Rec_path -----", str2, "XCIPTV_TAG");
            this.f28869N0.N(str2, this.f28915h0, f28828Q2, "Recorded", "0", Methods.H());
            media.addOption(":sout=#duplicate{dst=display,dst=standard{access=file,mux=mp4,dst=" + str2 + "}}");
        }
        if (!this.f28909f0.contains("vlc_hw") || this.f28909f0.getString("vlc_hw", null).equals("yes")) {
            media.setHWDecoderEnabled(true, false);
        } else {
            media.setHWDecoderEnabled(false, false);
        }
        this.f28911f2.setMedia(media);
        IVLCVout vLCVout = this.f28911f2.getVLCVout();
        vLCVout.setVideoView(this.f28908e2);
        vLCVout.attachViews();
        if (this.f28901b2.equals("epg")) {
            C();
        } else {
            MediaPlayer mediaPlayer2 = this.f28911f2;
            if (mediaPlayer2 != null) {
                mediaPlayer2.getVLCVout().setWindowSize(this.f28900b1, this.f28898a1);
                E(true);
            }
        }
        this.f28911f2.setEventListener((MediaPlayer.EventListener) new p004a3.i(this, 17));
        E(true);
        if (q0.q().c("ORT_WHICH_CAT", "TV").equals("TV") || U2.z("ORT_WHICH_CAT", "TV", "FAV")) {
            this.f28911f2.play();
            return;
        }
        if (U2.z("ORT_WHICH_CAT", "TV", "VOD")) {
            this.f28952t1.setText(this.f28849G1);
            if (this.f28923j2.equals("no")) {
                c7.d dVar = this.f28863L0;
                StringBuilder sb = new StringBuilder();
                U2.x("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET, sb, "-");
                sb.append(this.f28924k0);
                int iA0 = dVar.A0(sb.toString());
                this.f28870N1 = iA0;
                if (iA0 > 0) {
                    c7.d dVar2 = this.f28863L0;
                    StringBuilder sb2 = new StringBuilder();
                    U2.x("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET, sb2, "-");
                    sb2.append(this.f28924k0);
                    dVar2.C0(sb2.toString());
                    this.f28911f2.play();
                    this.f28911f2.pause();
                    Y();
                } else {
                    z();
                }
            } else {
                z();
            }
            A();
            return;
        }
        if (U2.z("ORT_WHICH_CAT", "TV", "SERIES")) {
            this.f28952t1.setText(this.f28849G1);
            c7.d dVar3 = this.f28863L0;
            StringBuilder sb3 = new StringBuilder();
            U2.x("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET, sb3, "-");
            sb3.append(this.f28924k0);
            int iA1 = dVar3.A0(sb3.toString());
            this.f28870N1 = iA1;
            if (iA1 > 0) {
                c7.d dVar4 = this.f28863L0;
                StringBuilder sb4 = new StringBuilder();
                U2.x("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET, sb4, "-");
                sb4.append(this.f28924k0);
                dVar4.C0(sb4.toString());
                this.f28911f2.play();
                this.f28911f2.pause();
                Y();
            } else {
                z();
            }
            A();
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0068  */
    public final void E(boolean z7) {
        String str;
        String str2;
        MediaPlayer mediaPlayer = this.f28911f2;
        if (mediaPlayer == null) {
            str = HttpUrl.FRAGMENT_ENCODE_SET;
        } else {
            int i8 = this.f28873O1;
            if (i8 == 0) {
                mediaPlayer.setAspectRatio(null);
                this.f28911f2.setScale(0.0f);
                str = "BEST FIT";
            } else {
                if (i8 == 1) {
                    str2 = "16:9";
                    mediaPlayer.setAspectRatio("16:9");
                    this.f28911f2.setScale(0.0f);
                } else if (i8 == 2) {
                    str2 = "4:3";
                    mediaPlayer.setAspectRatio("4:3");
                    this.f28911f2.setScale(0.0f);
                } else if (i8 == 3) {
                    mediaPlayer.setAspectRatio(null);
                    this.f28911f2.setScale(1.0f);
                    str = "ORIGINAL SIZE";
                } else if (i8 == 4) {
                    mediaPlayer.setAspectRatio(this.f28900b1 + ":" + this.f28898a1);
                    this.f28911f2.setScale(0.0f);
                    str = "FILL";
                } else {
                    str = HttpUrl.FRAGMENT_ENCODE_SET;
                }
                str = str2;
            }
        }
        if (z7) {
            return;
        }
        Toast.makeText(this, "ZOOM: ".concat(str), 0).show();
    }

    public final void F(String str) {
        PlayStreamEPGActivity playStreamEPGActivity = this.f28906e0;
        View viewInflate = LayoutInflater.from(playStreamEPGActivity).inflate(R.layout.xcip_dialog_single_btn, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(playStreamEPGActivity).create();
        ((TextView) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#4f000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText(str);
        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
        button.setText("OK");
        button.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 3));
        alertDialogCreate.show();
    }

    public final void G() {
        this.f28959v2 = false;
        this.f28956u2.setVisibility(8);
        int i8 = SeriesActivity.f29084E0 + 1;
        SeriesActivity.f29084E0 = i8;
        if (i8 >= SeriesActivity.f29082C0.length()) {
            finish();
            return;
        }
        String strA = Encrypt.a(this.f28872O0.f25480c);
        String strA2 = Encrypt.a(this.f28872O0.f25481d);
        try {
            JSONObject jSONObject = SeriesActivity.f29082C0.getJSONObject(SeriesActivity.f29084E0);
            f28828Q2 = (!q0.q().c("ORT_SERIES_PORTAL", "no").equals("no") ? q0.q().c("ORT_SERIES_PORTAL", "no") : Encrypt.a(this.f28872O0.f25482e)) + "/series/" + strA + MqttTopic.TOPIC_LEVEL_SEPARATOR + strA2 + MqttTopic.TOPIC_LEVEL_SEPARATOR;
            if (jSONObject.getString("direct_source").equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                f28828Q2 += jSONObject.getString("id") + "." + jSONObject.getString("container_extension");
            } else {
                f28828Q2 = jSONObject.getString("direct_source");
            }
            StringBuilder sb = new StringBuilder();
            PlayStreamEPGActivity playStreamEPGActivity = this.f28906e0;
            sb.append(playStreamEPGActivity.getString(R.string.xc_season));
            sb.append(": ");
            sb.append(jSONObject.getString("season"));
            sb.append(" ");
            sb.append(playStreamEPGActivity.getString(R.string.xc_episode_no));
            sb.append(": ");
            sb.append(jSONObject.getString("episode_num"));
            this.f28849G1 = sb.toString();
            this.f28915h0 = jSONObject.getString("title");
            this.f28924k0 = jSONObject.getString("id");
            this.f28949s1.setText(this.f28915h0);
        } catch (JSONException unused) {
        }
        V();
        W0 w7 = this.f28834B1;
        if (w7 != null) {
            this.f28967y1.removeCallbacks(w7);
        }
        String strC = q0.q().c("ORT_WHICH_PLAYER", "EXO");
        strC.getClass();
        if (strC.equals("EXO")) {
            v(f28828Q2);
        } else if (strC.equals("VLC")) {
            D(f28828Q2);
        }
    }

    public final AbstractC0277a H(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        int I7 = TextUtils.isEmpty(lastPathSegment) ? M.I(uri) : M.J(lastPathSegment);
        int i8 = 19;
        if (I7 == 2) {
            if (this.f28929l2.equals(HttpUrl.FRAGMENT_ENCODE_SET) || this.f28929l2.equals("hls")) {
                this.f28929l2 = "hls";
                Log.d("XCIPTV_TAG", " --------------TYPE_HLS---------------");
                HlsMediaSource$Factory hlsMediaSource$Factory = new HlsMediaSource$Factory(f28829R2);
                hlsMediaSource$Factory.f9468i = true;
                hlsMediaSource$Factory.f9461b = new H0.d(9, false);
                return hlsMediaSource$Factory.b(I.a(uri));
            }
            if (this.f28929l2.equals("other")) {
                Log.d("XCIPTV_TAG", " --------------TYPE_OTHER---------------");
                this.f28929l2 = "other";
                InterfaceC3183h interfaceC3183h = f28829R2;
                C0073x c0073x = new C0073x(new p(), i8);
                j jVar = new j();
                U4.b bVar = new U4.b();
                I iA = I.a(uri);
                iA.f26702b.getClass();
                return new N(iA, interfaceC3183h, c0073x, jVar.b(iA), bVar, 1048576);
            }
        } else {
            if (I7 == 0) {
                return new DashMediaSource$Factory(f28829R2).b(I.a(uri));
            }
            if (I7 != 4) {
                throw new IllegalStateException(r.f("Unsupported type: ", I7));
            }
            if (this.f28929l2.equals(HttpUrl.FRAGMENT_ENCODE_SET) || this.f28929l2.equals("other")) {
                this.f28929l2 = "other";
                Log.d("XCIPTV_TAG", " --------------TYPE_OTHER---------------");
                InterfaceC3183h interfaceC3183h2 = f28829R2;
                C0073x c0073x2 = new C0073x(new p(), i8);
                j jVar2 = new j();
                U4.b bVar2 = new U4.b();
                I iA2 = I.a(uri);
                iA2.f26702b.getClass();
                return new N(iA2, interfaceC3183h2, c0073x2, jVar2.b(iA2), bVar2, 1048576);
            }
            if (this.f28929l2.equals("hls")) {
                this.f28929l2 = "hls";
                Log.d("XCIPTV_TAG", " --------------TYPE_HLS---------------");
                HlsMediaSource$Factory hlsMediaSource$Factory2 = new HlsMediaSource$Factory(f28829R2);
                hlsMediaSource$Factory2.f9468i = true;
                hlsMediaSource$Factory2.f9461b = new H0.d(9, false);
                return hlsMediaSource$Factory2.b(I.a(uri));
            }
        }
        return null;
    }

    public final void I() {
        if (this.f28909f0.contains("video_subtiltes_exo") && this.f28909f0.getString("video_subtiltes_exo", null).equals("no")) {
            return;
        }
        Handler handler = new Handler(Looper.getMainLooper());
        this.f28868M2 = handler;
        RunnableC0513e1 runnableC0513e1 = new RunnableC0513e1(this, 3);
        this.f28871N2 = runnableC0513e1;
        handler.postDelayed(runnableC0513e1, 10000L);
    }

    public final void J(int i8) {
        O();
        if (!q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && this.f28911f2.isPlaying()) {
                long j8 = i8;
                if (this.f28911f2.getTime() + j8 > this.f28911f2.getLength()) {
                    MediaPlayer mediaPlayer = this.f28911f2;
                    mediaPlayer.setTime(mediaPlayer.getTime() - j8);
                    return;
                } else {
                    MediaPlayer mediaPlayer2 = this.f28911f2;
                    mediaPlayer2.setTime(mediaPlayer2.getTime() + j8);
                    return;
                }
            }
            return;
        }
        long j9 = i8;
        if (this.f28859J2.v() + j9 <= this.f28859J2.A()) {
            this.f28859J2.j(5, (int) (this.f28859J2.v() + j9));
            this.f28961w1.setProgress((int) (this.f28859J2.v() / 1000));
        } else {
            O o4 = this.f28859J2;
            o4.j(5, o4.A() - 2000);
            X();
            SeekBar seekBar = this.f28961w1;
            seekBar.setProgress(seekBar.getProgress());
        }
    }

    public final void K(int i8) {
        O();
        if (q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
            long j8 = i8;
            if (this.f28859J2.v() - j8 < 0) {
                this.f28859J2.j(5, 1L);
                X();
                return;
            } else {
                this.f28859J2.j(5, (int) (this.f28859J2.v() - j8));
                this.f28961w1.setProgress((int) (this.f28859J2.v() / 1000));
                return;
            }
        }
        if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && this.f28911f2.isPlaying()) {
            long j9 = i8;
            if (this.f28911f2.getTime() < j9) {
                this.f28911f2.setTime(0L);
            } else {
                MediaPlayer mediaPlayer = this.f28911f2;
                mediaPlayer.setTime(mediaPlayer.getTime() - j9);
            }
        }
    }

    public final void L() {
        if (this.f28909f0.contains("announcement")) {
            String string = this.f28909f0.getString("announcement", null);
            String string2 = this.f28909f0.getString("ann_status", null);
            this.f28909f0.getString("ann_expire", null);
            this.f28927l0 = this.f28909f0.getString("ann_interval", "1");
            this.f28930m0 = this.f28909f0.getString("ann_disappear", "1");
            if (string2.equals("ACTIVE")) {
                this.f28839D0.setSelected(true);
                this.f28839D0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                this.f28839D0.setText(string);
                this.f28848G0.setAlpha(1.0f);
                W0 w7 = this.f28888V0;
                if (w7 != null) {
                    this.f28880R0.removeCallbacks(w7);
                }
                Handler handler = new Handler(Looper.getMainLooper());
                this.f28880R0 = handler;
                W0 w8 = new W0(this, 7);
                this.f28888V0 = w8;
                handler.postDelayed(w8, Integer.parseInt(this.f28930m0) * 60000);
            }
        }
    }

    public final void M() {
        this.f28935n2 = 0;
        this.f28938o2 = Methods.F();
        this.f28864L1 = null;
        this.f28864L1 = new ArrayList();
        try {
            new C3061x(this, this, "getEPGEZS", (Encrypt.a(this.f28872O0.f25482e) + "/server/get_epg_info?token=" + Encrypt.a(this.f28909f0.getString("token", null)) + "&ch_name=" + this.f28918i0 + "&from_year=" + String.valueOf(Calendar.getInstance().get(1)) + "&from_month=" + Methods.K() + "&to_month=" + Methods.K()).replaceAll(" ", "%20").replaceAll("[\\r\\n]+", HttpUrl.FRAGMENT_ENCODE_SET));
        } catch (Exception unused) {
            Log.d("XCIPTV_TAG", "XCUpdateContents -- VolleyGETStringRequest Error");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v24, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v34 */
    public final void N(String str, String str2) {
        String str3;
        String str4;
        ?? r7;
        Log.d("XCIPTV_TAG", "-------------------------Calling epgChannelID" + str);
        this.f28864L1 = new ArrayList();
        Methods.F();
        PlayStreamEPGActivity playStreamEPGActivity = this.f28906e0;
        ((l) ((l) com.bumptech.glide.b.d(playStreamEPGActivity).n(this.f28841D2).g()).f(R.drawable.xciptv_tv)).F(this.f28838C2);
        p133r0.b bVar = new p133r0.b(playStreamEPGActivity, 1);
        String strA0 = bVar.a0(str);
        ArrayList arrayList = new ArrayList();
        if (strA0.length() > 4) {
            String[] strArrN = Methods.n(12, strA0);
            arrayList.clear();
            arrayList = bVar.N(strArrN[0], strArrN[1], str);
        }
        if (arrayList.size() > 0) {
            for (int i8 = 0; i8 < arrayList.size(); i8++) {
                String strC = Methods.c(((g) arrayList.get(i8)).f24677a);
                String strC2 = Methods.c(((g) arrayList.get(i8)).f24678b);
                HashMap map = new HashMap();
                map.put("title", ((g) arrayList.get(i8)).f24680d);
                map.put("description", ((g) arrayList.get(i8)).f24681e);
                map.put("start", strC);
                map.put("end", strC2);
                this.f28864L1.add(map);
            }
        }
        int i9 = 8;
        if (this.f28864L1.size() > 0) {
            Collections.sort(this.f28864L1, new f(i9));
        }
        if (this.f28864L1.size() == 0) {
            if (str2.equals("no")) {
                this.f28893X1.setText(this.f28915h0.toUpperCase());
                this.f28895Y1.setText(playStreamEPGActivity.getString(R.string.xc_epg_not_available_for_this_channel));
                this.f28897Z1.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                this.f28952t1.setText(playStreamEPGActivity.getString(R.string.xc_epg_not_available_for_this_channel));
                this.f28955u1.setVisibility(8);
            }
            HashMap map2 = new HashMap();
            map2.put("title", playStreamEPGActivity.getString(R.string.xc_epg_not_available_for_this_channel));
            map2.put("description", playStreamEPGActivity.getString(R.string.xc_epg_not_available_for_this_channel));
            map2.put("start", playStreamEPGActivity.getString(R.string.xc_unavailable));
            map2.put("end", HttpUrl.FRAGMENT_ENCODE_SET);
            this.f28864L1.add(map2);
            r7 = 0;
        } else {
            String str5 = (String) ((HashMap) this.f28864L1.get(0)).get("title");
            String str6 = U2.z("ORT_TIME_FORMAT", "12", "24") ? Methods.r(playStreamEPGActivity, (String) ((HashMap) this.f28864L1.get(0)).get("start"), "yyyyMMddHHmmss") + " - " + Methods.r(playStreamEPGActivity, (String) ((HashMap) this.f28864L1.get(0)).get("end"), "yyyyMMddHHmmss") : Methods.q((String) ((HashMap) this.f28864L1.get(0)).get("start")) + " - " + Methods.q((String) ((HashMap) this.f28864L1.get(0)).get("end"));
            this.f28955u1.setText((CharSequence) ((HashMap) this.f28864L1.get(0)).get("desc"));
            if (this.f28864L1.size() > 1) {
                str3 = (String) ((HashMap) this.f28864L1.get(1)).get("title");
                str4 = U2.z("ORT_TIME_FORMAT", "12", "24") ? Methods.r(playStreamEPGActivity, (String) ((HashMap) this.f28864L1.get(1)).get("start"), "yyyyMMddHHmmss") + " - " + Methods.r(playStreamEPGActivity, (String) ((HashMap) this.f28864L1.get(1)).get("end"), "yyyyMMddHHmmss") : Methods.q((String) ((HashMap) this.f28864L1.get(1)).get("start")) + " - " + Methods.q((String) ((HashMap) this.f28864L1.get(1)).get("end"));
            } else {
                str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                str4 = str3;
            }
            TextView textView = this.f28952t1;
            StringBuilder sbQ = U2.q("<font color=\"#08BF61\"> <b>", str5, " </b>", str6, "</font>  <font color=\"#F6A607\"> NEXT: <b>");
            sbQ.append(str3);
            sbQ.append("</b> ");
            sbQ.append(str4);
            sbQ.append("</font>");
            textView.setText(Html.fromHtml(sbQ.toString()));
            if (str2.equals("no")) {
                this.f28893X1.setText(this.f28915h0.toUpperCase());
                this.f28895Y1.setText(str5);
                this.f28897Z1.setText(str6);
            }
            r7 = 0;
            this.f28955u1.setVisibility(0);
        }
        int i10 = 2;
        C0549t c0549t = new C0549t(2, this, this.f28864L1);
        this.f28891W1 = c0549t;
        this.f28948s0.setAdapter((ListAdapter) c0549t);
        this.f28948s0.setFocusable((boolean) r7);
        this.f28948s0.setOnItemClickListener(new X0(this, r7));
        if (!this.f28920i2) {
            P();
            return;
        }
        this.f28920i2 = r7;
        W0 w7 = this.f28846F1;
        if (w7 != null) {
            this.f28843E1.removeCallbacks(w7);
            this.f28843E1.removeCallbacksAndMessages(null);
        }
        Handler handler = new Handler(Looper.getMainLooper());
        this.f28843E1 = handler;
        W0 w8 = new W0(this, i10);
        this.f28846F1 = w8;
        handler.postDelayed(w8, 12000);
    }

    public final void O() {
        int i8 = 0;
        this.f28896Z0 = false;
        Handler handler = new Handler(Looper.getMainLooper());
        this.f28882S0 = handler;
        W0 w7 = new W0(this, 4);
        this.f28890W0 = w7;
        handler.postDelayed(w7, 10000L);
        Runnable runnable = this.f28837C1;
        if (runnable != null) {
            this.f28970z1.removeCallbacks(runnable);
            this.f28970z1.removeCallbacksAndMessages(null);
        }
        Handler handler2 = new Handler(Looper.getMainLooper());
        this.f28970z1 = handler2;
        W0 w8 = new W0(this, i8);
        this.f28837C1 = w8;
        handler2.postDelayed(w8, 5000L);
    }

    public final void P() {
        this.f28945r0.clearFocus();
        this.f28945r0.requestFocus();
        this.f28945r0.setSelection(this.f28875P0);
        C0549t c0549t = this.f28891W1;
        if (c0549t != null) {
            c0549t.notifyDataSetChanged();
        }
    }

    public final void Q() {
        if (U2.z("ORT_WHICH_CAT", "TV", "TV") || U2.z("ORT_WHICH_CAT", "TV", "FAV")) {
            this.f28920i2 = true;
            if (!this.f28921j0.equals("1") || this.f28855I1 >= this.f28942q0.length() - 1) {
                return;
            }
            this.f28855I1++;
            new AsyncTaskC0522h1(this, (Object) null).execute(new Void[0]);
        }
    }

    public final void R() {
        O o4 = this.f28859J2;
        if (o4 != null) {
            o4.S(false);
            this.f28859J2.C();
        }
    }

    public final void S() {
        Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - Calling playerEPGView");
        this.f28901b2 = "epg";
        this.f28945r0.setVisibility(0);
        this.f28940p1.setVisibility(8);
        this.f28857J0.setVisibility(8);
        this.f28962w2 = false;
        if (U2.z("ORT_LIVE_TV_EPG_MODE", "yes", "yes")) {
            this.f28945r0.setVisibility(0);
            this.f28957v0.setVisibility(0);
            this.f28963x0.setVisibility(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f28860K0.getLayoutParams();
            double d6 = this.f28900b1;
            double d8 = d6 * 0.45d;
            layoutParams.width = (int) d8;
            layoutParams.height = (int) (d8 * 0.56d);
            layoutParams.gravity = 3;
            int i8 = (int) (this.f28830A0 * 2.0f);
            layoutParams.setMargins(((int) (d6 * 0.3d)) + i8, i8, 0, 0);
            this.f28860K0.setLayoutParams(layoutParams);
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f28960w0.getLayoutParams();
            double d9 = this.f28900b1;
            layoutParams2.width = (int) (0.25d * d9);
            double d10 = 0.45d * d9;
            layoutParams2.height = (int) (0.56d * d10);
            float f8 = this.f28830A0;
            int i9 = ((int) (d9 * 0.3d)) + ((int) d10) + ((int) (6.0f * f8));
            int i10 = (int) (f8 * 2.0f);
            layoutParams2.setMargins(i9, i10, i10, 0);
            this.f28960w0.setLayoutParams(layoutParams2);
            LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) this.f28948s0.getLayoutParams();
            int i11 = (int) (((double) this.f28900b1) * 0.3d);
            int i12 = (int) (this.f28830A0 * 2.0f);
            layoutParams3.setMargins(i11 + i12, i12, i12, 0);
            this.f28948s0.setLayoutParams(layoutParams3);
            LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) this.f28958v1.getLayoutParams();
            layoutParams4.setMargins((int) (((double) this.f28900b1) * 0.3d), 0, 0, 0);
            this.f28958v1.setLayoutParams(layoutParams4);
            if (q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("VLC")) {
                C();
            }
        }
        P();
    }

    public final void T() {
        int i8;
        if (U2.z("ORT_WHICH_CAT", "TV", "TV") || U2.z("ORT_WHICH_CAT", "TV", "FAV")) {
            this.f28920i2 = true;
            if (!this.f28921j0.equals("1") || (i8 = this.f28855I1) <= 0) {
                return;
            }
            this.f28855I1 = i8 - 1;
            new AsyncTaskC0522h1(this, (Object) null).execute(new Void[0]);
        }
    }

    /* JADX WARN: Code duplicated, block: B:53:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:56:0x0290  */
    /* JADX WARN: Code duplicated, block: B:59:0x02da  */
    /* JADX WARN: Code duplicated, block: B:62:0x02e8  */
    /* JADX WARN: Code duplicated, block: B:64:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:66:0x0316  */
    public final void U(String str) {
        String str2;
        String str3;
        String str4;
        String str5;
        W0 w7;
        W0 w8;
        String str6;
        String str7;
        String str8 = "end";
        String str9 = "start";
        String str10 = "description";
        String str11 = "title";
        String str12 = "yyyy/MM/dd HH:mm:ss";
        String str13 = "stoptime=";
        PlayStreamEPGActivity playStreamEPGActivity = this.f28906e0;
        char c8 = 0;
        try {
            String[] strArrSplit = str.replaceAll("starttime=", "epg--starttime=").split("epg--");
            int i8 = 1;
            while (i8 < strArrSplit.length) {
                String[] strArrSplit2 = strArrSplit[i8].split("\\n");
                String strS = Methods.s(strArrSplit2[c8].replaceAll("starttime=", HttpUrl.FRAGMENT_ENCODE_SET));
                String strS2 = Methods.s(strArrSplit2[1].replaceAll(str13, HttpUrl.FRAGMENT_ENCODE_SET));
                String[] strArr = strArrSplit;
                int i9 = i8;
                if (Methods.b(strS2, this.f28938o2).equals("larger")) {
                    int i10 = this.f28935n2;
                    if (i10 > 15) {
                        break;
                    }
                    String str14 = str8;
                    String str15 = str9;
                    String str16 = str10;
                    String str17 = str11;
                    String str18 = str13;
                    if (i10 == 0) {
                        str7 = str12;
                        try {
                            this.f28950s2 = strArrSplit2[2].replaceAll("title=", HttpUrl.FRAGMENT_ENCODE_SET);
                            this.f28955u1.setText(strArrSplit2[3].replaceAll("description=", HttpUrl.FRAGMENT_ENCODE_SET));
                            if (q0.q().c("ORT_TIME_FORMAT", "12").equals("24")) {
                                this.f28941p2 = Methods.r(playStreamEPGActivity, strS, "yyyyMMddHHmmss") + " - " + Methods.r(playStreamEPGActivity, strS2, "yyyyMMddHHmmss");
                            } else {
                                this.f28941p2 = Methods.q(strS) + " - " + Methods.q(strS2);
                            }
                        } catch (Exception unused) {
                            str2 = str14;
                            str3 = str15;
                            str5 = str16;
                            str4 = str17;
                        }
                    } else {
                        str7 = str12;
                    }
                    try {
                        if (this.f28935n2 == 1) {
                            if (q0.q().c("ORT_TIME_FORMAT", "12").equals("24")) {
                                StringBuilder sb = new StringBuilder();
                                str12 = str7;
                                sb.append(Methods.r(playStreamEPGActivity, strArrSplit2[0].replaceAll("starttime=", HttpUrl.FRAGMENT_ENCODE_SET), str12));
                                sb.append(" - ");
                                str6 = str18;
                                sb.append(Methods.r(playStreamEPGActivity, strArrSplit2[1].replaceAll(str6, HttpUrl.FRAGMENT_ENCODE_SET), str12));
                                this.f28944q2 = sb.toString();
                            } else {
                                str6 = str18;
                                str12 = str7;
                                this.f28944q2 = Methods.q(Methods.s(strArrSplit2[0].replaceAll("starttime=", HttpUrl.FRAGMENT_ENCODE_SET))) + " - " + Methods.q(Methods.s(strArrSplit2[1].replaceAll(str6, HttpUrl.FRAGMENT_ENCODE_SET)));
                            }
                            this.f28947r2 = strArrSplit2[2].replaceAll("title=", HttpUrl.FRAGMENT_ENCODE_SET);
                        } else {
                            str6 = str18;
                            str12 = str7;
                        }
                        HashMap map = new HashMap();
                        str4 = str17;
                        try {
                            map.put(str4, strArrSplit2[2].replaceAll("title=", HttpUrl.FRAGMENT_ENCODE_SET));
                            str5 = str16;
                            try {
                                map.put(str5, strArrSplit2[3].replaceAll("description=", HttpUrl.FRAGMENT_ENCODE_SET));
                                str3 = str15;
                                try {
                                    map.put(str3, Methods.q(Methods.s(strArrSplit2[0].replaceAll("starttime=", HttpUrl.FRAGMENT_ENCODE_SET))));
                                    String strQ = Methods.q(Methods.s(strArrSplit2[1].replaceAll(str6, HttpUrl.FRAGMENT_ENCODE_SET)));
                                    str2 = str14;
                                    try {
                                        map.put(str2, strQ);
                                        this.f28864L1.add(map);
                                        this.f28935n2++;
                                    } catch (Exception unused2) {
                                        if (this.f28935n2 == 0) {
                                            HashMap map2 = new HashMap();
                                            map2.put(str4, playStreamEPGActivity.getString(R.string.xc_epg_not_available_for_this_channel));
                                            map2.put(str5, playStreamEPGActivity.getString(R.string.xc_epg_not_available_for_this_channel));
                                            map2.put(str3, playStreamEPGActivity.getString(R.string.xc_unavailable));
                                            map2.put(str2, HttpUrl.FRAGMENT_ENCODE_SET);
                                            this.f28864L1.add(map2);
                                        }
                                        this.f28952t1.setText(Html.fromHtml(this.f28941p2 + "<font color=\"#08BF61\"> " + this.f28950s2 + "</font><br>" + this.f28944q2 + "<font color=\"#F6A607\"> " + this.f28947r2 + "</font><br>"));
                                        this.f28893X1.setText(this.f28915h0);
                                        this.f28895Y1.setText(this.f28950s2);
                                        this.f28897Z1.setText(this.f28941p2);
                                        ((l) ((l) com.bumptech.glide.b.d(playStreamEPGActivity).n(this.f28841D2).g()).f(R.drawable.xciptv_tv)).F(this.f28838C2);
                                        if (this.f28864L1.size() == 0) {
                                            this.f28893X1.setText(this.f28915h0);
                                            this.f28895Y1.setText(playStreamEPGActivity.getString(R.string.xc_epg_not_available_for_this_channel));
                                            this.f28897Z1.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                                            this.f28952t1.setText(playStreamEPGActivity.getString(R.string.xc_epg_not_available_for_this_channel));
                                            this.f28955u1.setVisibility(8);
                                        }
                                        C0549t c0549t = new C0549t(2, this, this.f28864L1);
                                        this.f28891W1 = c0549t;
                                        this.f28948s0.setAdapter((ListAdapter) c0549t);
                                        this.f28948s0.setFocusable(false);
                                        this.f28948s0.setOnItemClickListener(new X0(this, 1));
                                        w7 = this.f28846F1;
                                        if (w7 != null) {
                                            this.f28843E1.removeCallbacks(w7);
                                            this.f28843E1.removeCallbacksAndMessages(null);
                                        }
                                        if (!this.f28920i2) {
                                            P();
                                            return;
                                        }
                                        this.f28920i2 = false;
                                        this.f28918i0 = this.f28915h0;
                                        w8 = this.f28846F1;
                                        if (w8 != null) {
                                            this.f28843E1.removeCallbacks(w8);
                                            this.f28843E1.removeCallbacksAndMessages(null);
                                        }
                                        Handler handler = new Handler(Looper.getMainLooper());
                                        this.f28843E1 = handler;
                                        W0 w9 = new W0(this, 5);
                                        this.f28846F1 = w9;
                                        handler.postDelayed(w9, 10000L);
                                    }
                                } catch (Exception unused3) {
                                    str2 = str14;
                                }
                            } catch (Exception unused4) {
                                str2 = str14;
                                str3 = str15;
                            }
                        } catch (Exception unused5) {
                            str2 = str14;
                            str3 = str15;
                            str5 = str16;
                        }
                    } catch (Exception unused6) {
                        str2 = str14;
                        str3 = str15;
                        str5 = str16;
                        str4 = str17;
                    }
                    if (this.f28935n2 == 0) {
                        HashMap map3 = new HashMap();
                        map3.put(str4, playStreamEPGActivity.getString(R.string.xc_epg_not_available_for_this_channel));
                        map3.put(str5, playStreamEPGActivity.getString(R.string.xc_epg_not_available_for_this_channel));
                        map3.put(str3, playStreamEPGActivity.getString(R.string.xc_unavailable));
                        map3.put(str2, HttpUrl.FRAGMENT_ENCODE_SET);
                        this.f28864L1.add(map3);
                    }
                    this.f28952t1.setText(Html.fromHtml(this.f28941p2 + "<font color=\"#08BF61\"> " + this.f28950s2 + "</font><br>" + this.f28944q2 + "<font color=\"#F6A607\"> " + this.f28947r2 + "</font><br>"));
                    this.f28893X1.setText(this.f28915h0);
                    this.f28895Y1.setText(this.f28950s2);
                    this.f28897Z1.setText(this.f28941p2);
                    ((l) ((l) com.bumptech.glide.b.d(playStreamEPGActivity).n(this.f28841D2).g()).f(R.drawable.xciptv_tv)).F(this.f28838C2);
                    if (this.f28864L1.size() == 0) {
                        this.f28893X1.setText(this.f28915h0);
                        this.f28895Y1.setText(playStreamEPGActivity.getString(R.string.xc_epg_not_available_for_this_channel));
                        this.f28897Z1.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                        this.f28952t1.setText(playStreamEPGActivity.getString(R.string.xc_epg_not_available_for_this_channel));
                        this.f28955u1.setVisibility(8);
                    }
                    C0549t c0549t2 = new C0549t(2, this, this.f28864L1);
                    this.f28891W1 = c0549t2;
                    this.f28948s0.setAdapter((ListAdapter) c0549t2);
                    this.f28948s0.setFocusable(false);
                    this.f28948s0.setOnItemClickListener(new X0(this, 1));
                    w7 = this.f28846F1;
                    if (w7 != null) {
                        this.f28843E1.removeCallbacks(w7);
                        this.f28843E1.removeCallbacksAndMessages(null);
                    }
                    if (!this.f28920i2) {
                        P();
                        return;
                    }
                    this.f28920i2 = false;
                    this.f28918i0 = this.f28915h0;
                    w8 = this.f28846F1;
                    if (w8 != null) {
                        this.f28843E1.removeCallbacks(w8);
                        this.f28843E1.removeCallbacksAndMessages(null);
                    }
                    Handler handler2 = new Handler(Looper.getMainLooper());
                    this.f28843E1 = handler2;
                    W0 w10 = new W0(this, 5);
                    this.f28846F1 = w10;
                    handler2.postDelayed(w10, 10000L);
                }
                str2 = str8;
                str3 = str9;
                str6 = str13;
                str4 = str11;
                str5 = str10;
                i8 = i9 + 1;
                strArrSplit = strArr;
                str10 = str5;
                str11 = str4;
                str8 = str2;
                c8 = 0;
                str13 = str6;
                str9 = str3;
            }
            str2 = str8;
            str3 = str9;
            str4 = str11;
            str5 = str10;
        } catch (Exception unused7) {
            str2 = str8;
            str3 = str9;
            str4 = str11;
            str5 = str10;
        }
        if (this.f28935n2 == 0) {
            HashMap map4 = new HashMap();
            map4.put(str4, playStreamEPGActivity.getString(R.string.xc_epg_not_available_for_this_channel));
            map4.put(str5, playStreamEPGActivity.getString(R.string.xc_epg_not_available_for_this_channel));
            map4.put(str3, playStreamEPGActivity.getString(R.string.xc_unavailable));
            map4.put(str2, HttpUrl.FRAGMENT_ENCODE_SET);
            this.f28864L1.add(map4);
        }
        this.f28952t1.setText(Html.fromHtml(this.f28941p2 + "<font color=\"#08BF61\"> " + this.f28950s2 + "</font><br>" + this.f28944q2 + "<font color=\"#F6A607\"> " + this.f28947r2 + "</font><br>"));
        this.f28893X1.setText(this.f28915h0);
        this.f28895Y1.setText(this.f28950s2);
        this.f28897Z1.setText(this.f28941p2);
        ((l) ((l) com.bumptech.glide.b.d(playStreamEPGActivity).n(this.f28841D2).g()).f(R.drawable.xciptv_tv)).F(this.f28838C2);
        if (this.f28864L1.size() == 0) {
            this.f28893X1.setText(this.f28915h0);
            this.f28895Y1.setText(playStreamEPGActivity.getString(R.string.xc_epg_not_available_for_this_channel));
            this.f28897Z1.setText(HttpUrl.FRAGMENT_ENCODE_SET);
            this.f28952t1.setText(playStreamEPGActivity.getString(R.string.xc_epg_not_available_for_this_channel));
            this.f28955u1.setVisibility(8);
        }
        C0549t c0549t3 = new C0549t(2, this, this.f28864L1);
        this.f28891W1 = c0549t3;
        this.f28948s0.setAdapter((ListAdapter) c0549t3);
        this.f28948s0.setFocusable(false);
        this.f28948s0.setOnItemClickListener(new X0(this, 1));
        w7 = this.f28846F1;
        if (w7 != null) {
            this.f28843E1.removeCallbacks(w7);
            this.f28843E1.removeCallbacksAndMessages(null);
        }
        if (!this.f28920i2) {
            P();
            return;
        }
        this.f28920i2 = false;
        this.f28918i0 = this.f28915h0;
        w8 = this.f28846F1;
        if (w8 != null) {
            this.f28843E1.removeCallbacks(w8);
            this.f28843E1.removeCallbacksAndMessages(null);
        }
        Handler handler3 = new Handler(Looper.getMainLooper());
        this.f28843E1 = handler3;
        W0 w11 = new W0(this, 5);
        this.f28846F1 = w11;
        handler3.postDelayed(w11, 10000L);
    }

    public final void V() {
        MediaPlayer mediaPlayer;
        if (!U2.z("ORT_WHICH_PLAYER", "EXO", "EXO")) {
            if (!U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") || (mediaPlayer = this.f28911f2) == null) {
                return;
            }
            mediaPlayer.release();
            return;
        }
        if (this.f28859J2 != null) {
            Log.d("XCIPTV_TAG", "ExoPlayer not null");
            this.f28859J2.L();
            this.f28859J2 = null;
            this.f28856I2.setPlayer(null);
        }
    }

    public final void W() {
        RunnableC0513e1 runnableC0513e1 = this.f28871N2;
        if (runnableC0513e1 != null) {
            this.f28868M2.removeCallbacks(runnableC0513e1);
        }
        W0 w7 = this.f28834B1;
        if (w7 != null) {
            this.f28967y1.removeCallbacks(w7);
        }
        W0 w8 = this.f28840D1;
        if (w8 != null) {
            this.f28831A1.removeCallbacks(w8);
        }
        Runnable runnable = this.f28837C1;
        if (runnable != null) {
            this.f28970z1.removeCallbacks(runnable);
        }
        W0 w9 = this.f28890W0;
        if (w9 != null) {
            this.f28882S0.removeCallbacks(w9);
        }
        W0 w10 = this.f28846F1;
        if (w10 != null) {
            this.f28843E1.removeCallbacks(w10);
        }
        W0 w11 = this.f28892X0;
        if (w11 != null) {
            this.f28884T0.removeCallbacks(w11);
        }
    }

    public final void X() {
        this.f28867M1 = "no";
        this.f28845F0.setVisibility(8);
    }

    public final void Y() {
        PlayStreamEPGActivity playStreamEPGActivity = this.f28906e0;
        View viewInflate = LayoutInflater.from(playStreamEPGActivity).inflate(R.layout.xciptv_dialog, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(playStreamEPGActivity).create();
        ((TextView) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#4f000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText("Do you want to Resume Playback?");
        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
        button.setText("Resume");
        button.setOnClickListener(new ViewOnClickListenerC0507c1(this, alertDialogCreate, 0));
        Button button2 = (Button) viewInflate.findViewById(R.id.button_no);
        button2.setText("From Start");
        button2.setOnClickListener(new ViewOnClickListenerC0507c1(this, alertDialogCreate, 1));
        alertDialogCreate.show();
    }

    public final void Z() {
        MediaPlayer mediaPlayer;
        this.f28901b2 = "full";
        this.f28860K0.setLayoutParams(new FrameLayout.LayoutParams(this.f28900b1, this.f28898a1));
        if (q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("VLC") && (mediaPlayer = this.f28911f2) != null) {
            mediaPlayer.getVLCVout().setWindowSize(this.f28900b1, this.f28898a1);
            E(true);
        }
        B();
        Rect rect = new Rect();
        P();
        this.f28957v0.getLocalVisibleRect(rect);
        Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - " + rect.left);
        if (rect.left == 0) {
            this.f28921j0 = "0";
            this.f28957v0.animate().translationX(-((int) (((double) this.f28900b1) * 0.4d))).alpha(0.0f).setDuration(600L).setListener(new C0516f1(this, 0));
            this.f28963x0.setVisibility(8);
        } else {
            this.f28921j0 = "1";
            this.f28957v0.animate().translationX(0.0f).alpha(1.0f).setDuration(100L).setListener(new C0516f1(this, 1));
            S();
        }
    }

    public final void a0() {
        String strK = U2.k("ORT_PROFILE_USERNAME", HttpUrl.FRAGMENT_ENCODE_SET);
        String strK2 = U2.k("ORT_PROFILE_PASSWORD", HttpUrl.FRAGMENT_ENCODE_SET);
        if (this.f28875P0 >= this.f28939p0.length() || !this.f28921j0.equals("0")) {
            return;
        }
        int i8 = this.f28875P0 + 1;
        this.f28875P0 = i8;
        try {
            this.f28915h0 = this.f28939p0.getJSONObject(i8).getString("name");
            this.f28841D2 = this.f28939p0.getJSONObject(this.f28875P0).getString("stream_icon");
            this.f28924k0 = this.f28939p0.getJSONObject(this.f28875P0).getString("stream_id");
            this.f28939p0.getJSONObject(this.f28875P0).getString("epg_channel_id");
            if (this.f28939p0.getJSONObject(this.f28875P0).getString("direct_source").equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                f28828Q2 = Encrypt.a(q0.q().c("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)) + "/live/" + strK + MqttTopic.TOPIC_LEVEL_SEPARATOR + strK2 + MqttTopic.TOPIC_LEVEL_SEPARATOR + this.f28924k0 + "." + this.f28909f0.getString("streamFormat", null);
            } else {
                f28828Q2 = this.f28939p0.getJSONObject(this.f28875P0).getString("direct_source");
            }
            if (q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                v(f28828Q2);
            } else if (q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("VLC")) {
                D(f28828Q2);
            }
            B();
            this.f28893X1.setText(this.f28915h0);
            this.f28949s1.setText(this.f28915h0);
            this.f28968y2 = this.f28954u0[this.f28855I1];
        } catch (JSONException unused) {
            Log.d("XCIPTV_TAG", "JSON Error ----");
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes") || U2.z("ORT_WHICH_PANEL", "xtreamcodes", "otr")) {
            if (q0.q().b("ORT_PROCESS_STATUS") == 0) {
                N(this.f28863L0.H0(this.f28924k0), "no");
            }
        } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "ezserver")) {
            M();
        }
    }

    @Override // pe.hf.black20.util.d
    public final void b(int i8, String str, String str2) {
        Log.d("XCIPTV_TAG", "PlayStreamEPGActivity -- onFailureJson Error");
    }

    public final void b0() {
        String strK = U2.k("ORT_PROFILE_USERNAME", HttpUrl.FRAGMENT_ENCODE_SET);
        String strK2 = U2.k("ORT_PROFILE_PASSWORD", HttpUrl.FRAGMENT_ENCODE_SET);
        try {
            strK = URLEncoder.encode(strK, "UTF-8");
            strK2 = URLEncoder.encode(strK2, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
        }
        if (this.f28875P0 <= 0 || !this.f28921j0.equals("0")) {
            return;
        }
        int i8 = this.f28875P0 - 1;
        this.f28875P0 = i8;
        try {
            this.f28915h0 = this.f28939p0.getJSONObject(i8).getString("name");
            this.f28841D2 = this.f28939p0.getJSONObject(this.f28875P0).getString("stream_icon");
            this.f28924k0 = this.f28939p0.getJSONObject(this.f28875P0).getString("stream_id");
            this.f28939p0.getJSONObject(this.f28875P0).getString("epg_channel_id");
            if (this.f28939p0.getJSONObject(this.f28875P0).getString("direct_source").equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                f28828Q2 = Encrypt.a(q0.q().c("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)) + "/live/" + strK + MqttTopic.TOPIC_LEVEL_SEPARATOR + strK2 + MqttTopic.TOPIC_LEVEL_SEPARATOR + this.f28924k0 + "." + this.f28909f0.getString("streamFormat", null);
            } else {
                f28828Q2 = this.f28939p0.getJSONObject(this.f28875P0).getString("direct_source");
            }
            if (q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                v(f28828Q2);
            } else if (q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("VLC")) {
                D(f28828Q2);
            }
            B();
            this.f28893X1.setText(this.f28915h0);
            this.f28949s1.setText(this.f28915h0);
            this.f28968y2 = this.f28954u0[this.f28855I1];
        } catch (JSONException unused2) {
            Log.d("XCIPTV_TAG", "JSON Error ----");
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes") || U2.z("ORT_WHICH_PANEL", "xtreamcodes", "otr")) {
            if (q0.q().b("ORT_PROCESS_STATUS") == 0) {
                N(this.f28863L0.H0(this.f28924k0), "no");
            }
        } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "ezserver")) {
            M();
        }
    }

    @Override // p039f.AbstractActivityC3000o, D.h, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int action = keyEvent.getAction();
        if (keyEvent.getKeyCode() == 23 && action == 0 && keyEvent.isLongPress()) {
            return false;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // pe.hf.black20.util.d
    public final void f(String str, String str2) {
        if ("getEPGEZS".equals(str2)) {
            try {
                U(str);
            } catch (Exception unused) {
                Log.d("XCIPTV_TAG", "PlayStreamEPGActivity -- getEPGEZS");
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:162:0x05fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:27:0x049b  */
    /* JADX WARN: Code duplicated, block: B:72:0x0581  */
    /* JADX WARN: Code duplicated, block: B:74:0x059b  */
    /* JADX WARN: Code duplicated, block: B:76:0x05aa  */
    /* JADX WARN: Code duplicated, block: B:77:0x05b2  */
    /* JADX WARN: Code duplicated, block: B:85:0x062b  */
    /* JADX WARN: Code duplicated, block: B:86:0x0635  */
    /* JADX WARN: Code duplicated, block: B:89:0x0659  */
    /* JADX WARN: Code duplicated, block: B:91:0x066a  */
    /* JADX WARN: Code duplicated, block: B:92:0x0679  */
    /* JADX WARN: Code duplicated, block: B:95:0x0688  */
    /* JADX WARN: Code duplicated, block: B:97:0x0699  */
    /* JADX WARN: Code duplicated, block: B:98:0x069d  */
    /* JADX WARN: Code duplicated, block: B:99:0x06a1  */
    @Override // Y.AbstractActivityC0409v, p000a.m, D.h, android.app.Activity
    public final void onCreate(Bundle bundle) {
        byte b8;
        String str;
        String str2;
        int i8;
        int i9;
        Object obj;
        super.onCreate(bundle);
        Configuration configuration = getResources().getConfiguration();
        configuration.fontScale = 1.0f;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            getDisplay().getRealMetrics(displayMetrics);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        }
        displayMetrics.scaledDensity = configuration.fontScale * displayMetrics.density;
        getBaseContext().getResources().updateConfiguration(configuration, displayMetrics);
        getWindow().addFlags(128);
        setContentView(R.layout.activity_play_stream_epg);
        setRequestedOrientation(0);
        setRequestedOrientation(14);
        PlayStreamEPGActivity playStreamEPGActivity = this.f28906e0;
        SharedPreferences sharedPreferences = playStreamEPGActivity.getSharedPreferences("pe.hf.black20", 0);
        this.f28909f0 = sharedPreferences;
        if (sharedPreferences.contains("cutout")) {
            if (this.f28909f0.getString("cutout", null).equals("on") && i10 >= 28) {
                WindowManager.LayoutParams attributes = getWindow().getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                getWindow().setAttributes(attributes);
            }
        } else if (i10 >= 28) {
            WindowManager.LayoutParams attributes2 = getWindow().getAttributes();
            attributes2.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes2);
        }
        SharedPreferences sharedPreferences2 = playStreamEPGActivity.getSharedPreferences("pe.hf.black20", 0);
        this.f28909f0 = sharedPreferences2;
        this.f28912g0 = sharedPreferences2.edit();
        a aVar = new a(this, 0);
        this.f28863L0 = new c7.d(this);
        this.f28866M0 = new b(this, 0);
        int i11 = 2;
        this.f28869N0 = new c(playStreamEPGActivity, 2);
        this.f28872O0 = A0.O.x("ORT_PROFILE", "Default (XC)", aVar);
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        if (i10 >= 30) {
            getDisplay().getRealMetrics(displayMetrics2);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics2);
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics2);
        }
        this.f28898a1 = displayMetrics2.heightPixels;
        this.f28900b1 = displayMetrics2.widthPixels;
        this.f28830A0 = getResources().getDisplayMetrics().density;
        this.f28875P0 = 0;
        this.f28927l0 = "1";
        this.f28878Q0 = new GestureDetector(this, new C0532l(this, i11));
        this.f28893X1 = (TextView) findViewById(R.id.txt_epg_channel_name);
        this.f28895Y1 = (TextView) findViewById(R.id.txt_epg_programe_title);
        this.f28897Z1 = (TextView) findViewById(R.id.txt_epg_programe_time);
        TextView textView = (TextView) findViewById(R.id.txt_which_ch_epg);
        this.f28958v1 = textView;
        textView.setVisibility(8);
        TextView textView2 = (TextView) findViewById(R.id.txt_cat_name_player);
        this.f28842E0 = textView2;
        textView2.setText(q0.q().c("ORT_CAT_NAME", HttpUrl.FRAGMENT_ENCODE_SET).toUpperCase());
        TextView textView3 = (TextView) findViewById(R.id.txt_fastforward);
        this.f28845F0 = textView3;
        textView3.setVisibility(8);
        ImageView imageView = (ImageView) findViewById(R.id.img_recording_logo);
        this.f28836C0 = imageView;
        imageView.setVisibility(8);
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.progress_bar);
        this.f28833B0 = progressBar;
        progressBar.setVisibility(4);
        SeekBar seekBar = (SeekBar) findViewById(R.id.seekBar_audio_volume);
        this.f28902c1 = seekBar;
        seekBar.setMax(100);
        SeekBar seekBar2 = (SeekBar) findViewById(R.id.seekBar_video_volume);
        this.f28904d1 = seekBar2;
        seekBar2.setMax(100);
        this.f28860K0 = (FrameLayout) findViewById(R.id.layout_playerview_holder);
        this.f28960w0 = (FrameLayout) findViewById(R.id.layout_tv_channel_info);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.layout_epg_holder);
        this.f28963x0 = frameLayout;
        frameLayout.setVisibility(8);
        this.f28957v0 = (FrameLayout) findViewById(R.id.layout_side_list_player);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R.id.layout_player_top_layer);
        this.f28969z0 = frameLayout2;
        frameLayout2.setOnTouchListener(this.f28874O2);
        this.f28848G0 = (FrameLayout) findViewById(R.id.layout_ann_player);
        FrameLayout frameLayout3 = (FrameLayout) findViewById(R.id.layout_seekbar_holder);
        this.f28851H0 = frameLayout3;
        frameLayout3.setVisibility(8);
        FrameLayout frameLayout4 = (FrameLayout) findViewById(R.id.layout_seekbar_holder_video);
        this.f28854I0 = frameLayout4;
        frameLayout4.setVisibility(8);
        FrameLayout frameLayout5 = (FrameLayout) findViewById(R.id.layout_ch_up_down);
        this.f28857J0 = frameLayout5;
        frameLayout5.setVisibility(8);
        TextView textView4 = (TextView) findViewById(R.id.txt_announce_player);
        this.f28839D0 = textView4;
        textView4.setSelected(true);
        this.f28945r0 = (ListView) findViewById(R.id.listview_ch);
        this.f28948s0 = (ListView) findViewById(R.id.listview_epg);
        Button button = (Button) findViewById(R.id.btn_cat_up_down);
        this.f28913g1 = (ImageButton) findViewById(R.id.btn_p_play);
        this.f28916h1 = (ImageButton) findViewById(R.id.btn_p_forward);
        this.f28919i1 = (ImageButton) findViewById(R.id.btn_p_rewind);
        this.f28922j1 = (ImageButton) findViewById(R.id.btn_p_zoom);
        this.f28925k1 = (ImageButton) findViewById(R.id.btn_p_sub);
        ImageButton imageButton = (ImageButton) findViewById(R.id.btn_p_cust_sub);
        this.f28928l1 = imageButton;
        imageButton.setVisibility(8);
        FrameLayout frameLayout6 = (FrameLayout) findViewById(R.id.btn_p_cust_sub_holder);
        this.f28966y0 = frameLayout6;
        frameLayout6.setVisibility(8);
        this.f28931m1 = (ImageButton) findViewById(R.id.btn_p_audio);
        this.f28934n1 = (ImageButton) findViewById(R.id.btn_p_video);
        ImageButton imageButton2 = (ImageButton) findViewById(R.id.btn_p_rec);
        this.f28937o1 = imageButton2;
        imageButton2.setVisibility(8);
        ((ImageButton) findViewById(R.id.btn_p_cast)).setVisibility(8);
        ImageButton imageButton3 = (ImageButton) findViewById(R.id.btn_ch_up);
        ImageButton imageButton4 = (ImageButton) findViewById(R.id.btn_ch_down);
        ImageButton imageButton5 = (ImageButton) findViewById(R.id.btn_left_cat);
        ImageButton imageButton6 = (ImageButton) findViewById(R.id.btn_right_cat);
        button.setFocusable(false);
        imageButton5.setFocusable(false);
        imageButton6.setFocusable(false);
        ImageButton imageButton7 = (ImageButton) findViewById(R.id.btn_back);
        this.f28905d2 = imageButton7;
        imageButton7.setVisibility(8);
        Button button2 = (Button) findViewById(R.id.btn_play_episode_back);
        this.f28953t2 = (Button) findViewById(R.id.btn_play_next_episode);
        FrameLayout frameLayout7 = (FrameLayout) findViewById(R.id.layout_play_next_episode);
        this.f28956u2 = frameLayout7;
        frameLayout7.setVisibility(8);
        this.f28838C2 = (ImageView) findViewById(R.id.img_mf_channel_icon);
        ((TextView) findViewById(R.id.debug_text_view)).setVisibility(8);
        this.f28850G2 = (ImageView) findViewById(R.id.tensecrewind);
        this.f28853H2 = (ImageView) findViewById(R.id.tensecforward);
        this.f28850G2.setVisibility(8);
        this.f28853H2.setVisibility(8);
        if (Methods.R(playStreamEPGActivity)) {
            this.f28903c2 = "default";
        } else {
            this.f28903c2 = ChannelListActivity.f28436r0;
        }
        final int i12 = 9;
        button2.setOnClickListener(new View.OnClickListener(this) { // from class: b7.Y0

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10255H;

            {
                this.f10255H = this;
            }

            /* JADX WARN: Code duplicated, block: B:65:0x0154  */
            /* JADX WARN: Type inference failed for: r0v13, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v18, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v3, types: [b7.a1] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String str3;
                MediaPlayer mediaPlayer;
                int i13 = i12;
                final int i14 = 2;
                final int i15 = 0;
                final int i16 = 1;
                final PlayStreamEPGActivity playStreamEPGActivity2 = this.f10255H;
                switch (i13) {
                    case 0:
                        String str4 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getSpuTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] spuTracks = playStreamEPGActivity2.f28911f2.getSpuTracks();
                                    String[] strArr = new String[spuTracks.length];
                                    String[] strArr2 = new String[spuTracks.length];
                                    int i17 = 0;
                                    for (int i18 = 0; i18 < spuTracks.length; i18++) {
                                        MediaPlayer.TrackDescription trackDescription = spuTracks[i18];
                                        Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - loadSpuTrack " + trackDescription.name + ", id " + trackDescription.id);
                                        int spuTrack = playStreamEPGActivity2.f28911f2.getSpuTrack();
                                        int i19 = trackDescription.id;
                                        if (spuTrack == i19) {
                                            i17 = i18;
                                        }
                                        strArr[i18] = String.valueOf(i19);
                                        strArr2[i18] = trackDescription.name;
                                    }
                                    SharedPreferences.Editor editorEdit = playStreamEPGActivity2.f28909f0.edit();
                                    AlertDialog.Builder builder = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder.setTitle("Choose Subtitle Language");
                                    builder.setSingleChoiceItems(strArr2, i17, new DialogInterfaceOnClickListenerC0510d1(playStreamEPGActivity2, strArr, editorEdit, i15));
                                    builder.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i20 = i14;
                                    PlayStreamEPGActivity playStreamEPGActivity3 = playStreamEPGActivity2;
                                    switch (i20) {
                                        case 0:
                                            playStreamEPGActivity3.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity3.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity3.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 1:
                        PlayStreamEPGActivity playStreamEPGActivity3 = playStreamEPGActivity2.f28906e0;
                        View viewInflate = LayoutInflater.from(playStreamEPGActivity3).inflate(R.layout.xciptv_dialog_select_cc_url, (ViewGroup) null);
                        AlertDialog alertDialogCreate = new AlertDialog.Builder(playStreamEPGActivity3).create();
                        EditText editText = (EditText) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.ed_cc_url);
                        Button button3 = (Button) viewInflate.findViewById(R.id.btn_cc_cancel);
                        ((Button) viewInflate.findViewById(R.id.btn_cc_add)).setOnClickListener(new ViewOnClickListenerC0505c(playStreamEPGActivity2, editText, alertDialogCreate, 1));
                        button3.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 2));
                        alertDialogCreate.show();
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getVideoTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] videoTracks = playStreamEPGActivity2.f28911f2.getVideoTracks();
                                    final String[] strArr3 = new String[videoTracks.length];
                                    String[] strArr4 = new String[videoTracks.length];
                                    for (int i20 = 0; i20 < videoTracks.length; i20++) {
                                        MediaPlayer.TrackDescription trackDescription2 = videoTracks[i20];
                                        Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription2.name + ", id " + trackDescription2.id);
                                        strArr3[i20] = String.valueOf(trackDescription2.id);
                                        strArr4[i20] = trackDescription2.name;
                                    }
                                    AlertDialog.Builder builder2 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder2.setTitle("Choose Video Track");
                                    builder2.setSingleChoiceItems(strArr4, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i21) {
                                            int i22 = i15;
                                            String[] strArr5 = strArr3;
                                            PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                            switch (i22) {
                                                case 0:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr5[i21]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                                default:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr5[i21]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                            }
                                        }
                                    });
                                    builder2.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder2.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i21 = i15;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i21) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            playStreamEPGActivity2.f28862K2 = playStreamEPGActivity2.f28859J2.E();
                            if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                                playStreamEPGActivity2.f28865L2 = true;
                                e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i21 = i16;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i21) {
                                            case 0:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            case 1:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                        }
                                    }
                                }).U(playStreamEPGActivity2.f7985X.R(), null);
                                break;
                            }
                        } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                            if (playStreamEPGActivity2.f28911f2.getAudioTracksCount() == 0) {
                                playStreamEPGActivity2.F("No Audio Tracks Available.");
                            } else {
                                MediaPlayer.TrackDescription[] audioTracks = playStreamEPGActivity2.f28911f2.getAudioTracks();
                                final String[] strArr5 = new String[audioTracks.length];
                                String[] strArr6 = new String[audioTracks.length];
                                for (int i21 = 0; i21 < audioTracks.length; i21++) {
                                    MediaPlayer.TrackDescription trackDescription3 = audioTracks[i21];
                                    Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription3.name + ", id " + trackDescription3.id);
                                    strArr5[i21] = String.valueOf(trackDescription3.id);
                                    strArr6[i21] = trackDescription3.name;
                                }
                                AlertDialog.Builder builder3 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                builder3.setTitle("Choose Audio Track");
                                builder3.setSingleChoiceItems(strArr6, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i22) {
                                        int i23 = i16;
                                        String[] strArr7 = strArr5;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i23) {
                                            case 0:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i22]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i22]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                        }
                                    }
                                });
                                builder3.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                builder3.create().show();
                            }
                            break;
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 3;
                            }
                            int i22 = playStreamEPGActivity2.f28873O1;
                            if (i22 < 0 || i22 >= 5) {
                                str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                            } else {
                                if (i22 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                int i23 = playStreamEPGActivity2.f28873O1 + 1;
                                playStreamEPGActivity2.f28873O1 = i23;
                                if (i23 == 0) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(0);
                                    str3 = "FIT";
                                } else if (i23 == 1) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(1);
                                    str3 = "FIXED WIDTH";
                                } else if (i23 == 2) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(2);
                                    str3 = "FIXED HEIGHT";
                                } else if (i23 == 3) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(3);
                                    str3 = "FILL";
                                } else if (i23 == 4) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(4);
                                    str3 = "ZOOMED";
                                } else {
                                    str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                                }
                            }
                            Toast.makeText(playStreamEPGActivity2, "ZOOM: ".concat(str3), 0).show();
                            SharedPreferences.Editor editorEdit2 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit2.putString("video_resize_exo", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit2.apply();
                            editorEdit2.commit();
                        }
                        if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 4;
                            }
                            int i24 = playStreamEPGActivity2.f28873O1;
                            if (i24 >= 0 && i24 <= 5) {
                                if (i24 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                playStreamEPGActivity2.f28873O1++;
                                playStreamEPGActivity2.E(false);
                            }
                            SharedPreferences.Editor editorEdit3 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit3.putString("video_resize_vlc", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit3.apply();
                            editorEdit3.commit();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.J(15000);
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.K(15000);
                        break;
                    case 7:
                        if (playStreamEPGActivity2.f28867M1.equals("yes")) {
                            playStreamEPGActivity2.X();
                        } else {
                            playStreamEPGActivity2.O();
                            if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                                if (playStreamEPGActivity2.f28910f1.equals("paused")) {
                                    playStreamEPGActivity2.f28859J2.S(true);
                                    playStreamEPGActivity2.f28859J2.C();
                                    playStreamEPGActivity2.f28910f1 = "playing";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                } else {
                                    playStreamEPGActivity2.R();
                                    playStreamEPGActivity2.f28910f1 = "paused";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                }
                            } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && (mediaPlayer = playStreamEPGActivity2.f28911f2) != null) {
                                if (mediaPlayer.isPlaying()) {
                                    playStreamEPGActivity2.f28911f2.pause();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                } else {
                                    playStreamEPGActivity2.f28911f2.play();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                }
                            }
                            playStreamEPGActivity2.f28913g1.requestFocus();
                        }
                        break;
                    case 8:
                        if (playStreamEPGActivity2.f28926k2) {
                            playStreamEPGActivity2.f28836C0.setVisibility(8);
                            playStreamEPGActivity2.f28926k2 = false;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        } else {
                            playStreamEPGActivity2.f28836C0.setVisibility(0);
                            playStreamEPGActivity2.f28926k2 = true;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        }
                        break;
                    case 9:
                        String str10 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.finish();
                        break;
                    case 10:
                        String str11 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.G();
                        break;
                    case 11:
                        String str12 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.b0();
                        break;
                    case 12:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.a0();
                        break;
                    case 13:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.T();
                        break;
                    default:
                        String str15 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.Q();
                        break;
                }
            }
        });
        final int i13 = 10;
        this.f28953t2.setOnClickListener(new View.OnClickListener(this) { // from class: b7.Y0

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10255H;

            {
                this.f10255H = this;
            }

            /* JADX WARN: Code duplicated, block: B:65:0x0154  */
            /* JADX WARN: Type inference failed for: r0v13, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v18, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v3, types: [b7.a1] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String str3;
                MediaPlayer mediaPlayer;
                int i14 = i13;
                final int i15 = 2;
                final int i16 = 0;
                final int i17 = 1;
                final PlayStreamEPGActivity playStreamEPGActivity2 = this.f10255H;
                switch (i14) {
                    case 0:
                        String str4 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getSpuTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] spuTracks = playStreamEPGActivity2.f28911f2.getSpuTracks();
                                    String[] strArr = new String[spuTracks.length];
                                    String[] strArr2 = new String[spuTracks.length];
                                    int i18 = 0;
                                    for (int i19 = 0; i19 < spuTracks.length; i19++) {
                                        MediaPlayer.TrackDescription trackDescription = spuTracks[i19];
                                        Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - loadSpuTrack " + trackDescription.name + ", id " + trackDescription.id);
                                        int spuTrack = playStreamEPGActivity2.f28911f2.getSpuTrack();
                                        int i110 = trackDescription.id;
                                        if (spuTrack == i110) {
                                            i18 = i19;
                                        }
                                        strArr[i19] = String.valueOf(i110);
                                        strArr2[i19] = trackDescription.name;
                                    }
                                    SharedPreferences.Editor editorEdit = playStreamEPGActivity2.f28909f0.edit();
                                    AlertDialog.Builder builder = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder.setTitle("Choose Subtitle Language");
                                    builder.setSingleChoiceItems(strArr2, i18, new DialogInterfaceOnClickListenerC0510d1(playStreamEPGActivity2, strArr, editorEdit, i16));
                                    builder.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i21 = i15;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i21) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 1:
                        PlayStreamEPGActivity playStreamEPGActivity3 = playStreamEPGActivity2.f28906e0;
                        View viewInflate = LayoutInflater.from(playStreamEPGActivity3).inflate(R.layout.xciptv_dialog_select_cc_url, (ViewGroup) null);
                        AlertDialog alertDialogCreate = new AlertDialog.Builder(playStreamEPGActivity3).create();
                        EditText editText = (EditText) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.ed_cc_url);
                        Button button3 = (Button) viewInflate.findViewById(R.id.btn_cc_cancel);
                        ((Button) viewInflate.findViewById(R.id.btn_cc_add)).setOnClickListener(new ViewOnClickListenerC0505c(playStreamEPGActivity2, editText, alertDialogCreate, 1));
                        button3.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 2));
                        alertDialogCreate.show();
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getVideoTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] videoTracks = playStreamEPGActivity2.f28911f2.getVideoTracks();
                                    final String[] strArr3 = new String[videoTracks.length];
                                    String[] strArr4 = new String[videoTracks.length];
                                    for (int i20 = 0; i20 < videoTracks.length; i20++) {
                                        MediaPlayer.TrackDescription trackDescription2 = videoTracks[i20];
                                        Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription2.name + ", id " + trackDescription2.id);
                                        strArr3[i20] = String.valueOf(trackDescription2.id);
                                        strArr4[i20] = trackDescription2.name;
                                    }
                                    AlertDialog.Builder builder2 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder2.setTitle("Choose Video Track");
                                    builder2.setSingleChoiceItems(strArr4, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i22) {
                                            int i23 = i16;
                                            String[] strArr7 = strArr3;
                                            PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                            switch (i23) {
                                                case 0:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i22]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                                default:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i22]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                            }
                                        }
                                    });
                                    builder2.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder2.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i21 = i16;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i21) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            playStreamEPGActivity2.f28862K2 = playStreamEPGActivity2.f28859J2.E();
                            if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                                playStreamEPGActivity2.f28865L2 = true;
                                e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i21 = i17;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i21) {
                                            case 0:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            case 1:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                        }
                                    }
                                }).U(playStreamEPGActivity2.f7985X.R(), null);
                                break;
                            }
                        } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                            if (playStreamEPGActivity2.f28911f2.getAudioTracksCount() == 0) {
                                playStreamEPGActivity2.F("No Audio Tracks Available.");
                            } else {
                                MediaPlayer.TrackDescription[] audioTracks = playStreamEPGActivity2.f28911f2.getAudioTracks();
                                final String[] strArr5 = new String[audioTracks.length];
                                String[] strArr6 = new String[audioTracks.length];
                                for (int i21 = 0; i21 < audioTracks.length; i21++) {
                                    MediaPlayer.TrackDescription trackDescription3 = audioTracks[i21];
                                    Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription3.name + ", id " + trackDescription3.id);
                                    strArr5[i21] = String.valueOf(trackDescription3.id);
                                    strArr6[i21] = trackDescription3.name;
                                }
                                AlertDialog.Builder builder3 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                builder3.setTitle("Choose Audio Track");
                                builder3.setSingleChoiceItems(strArr6, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i22) {
                                        int i23 = i17;
                                        String[] strArr7 = strArr5;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i23) {
                                            case 0:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i22]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i22]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                        }
                                    }
                                });
                                builder3.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                builder3.create().show();
                            }
                            break;
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 3;
                            }
                            int i22 = playStreamEPGActivity2.f28873O1;
                            if (i22 < 0 || i22 >= 5) {
                                str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                            } else {
                                if (i22 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                int i23 = playStreamEPGActivity2.f28873O1 + 1;
                                playStreamEPGActivity2.f28873O1 = i23;
                                if (i23 == 0) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(0);
                                    str3 = "FIT";
                                } else if (i23 == 1) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(1);
                                    str3 = "FIXED WIDTH";
                                } else if (i23 == 2) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(2);
                                    str3 = "FIXED HEIGHT";
                                } else if (i23 == 3) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(3);
                                    str3 = "FILL";
                                } else if (i23 == 4) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(4);
                                    str3 = "ZOOMED";
                                } else {
                                    str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                                }
                            }
                            Toast.makeText(playStreamEPGActivity2, "ZOOM: ".concat(str3), 0).show();
                            SharedPreferences.Editor editorEdit2 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit2.putString("video_resize_exo", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit2.apply();
                            editorEdit2.commit();
                        }
                        if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 4;
                            }
                            int i24 = playStreamEPGActivity2.f28873O1;
                            if (i24 >= 0 && i24 <= 5) {
                                if (i24 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                playStreamEPGActivity2.f28873O1++;
                                playStreamEPGActivity2.E(false);
                            }
                            SharedPreferences.Editor editorEdit3 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit3.putString("video_resize_vlc", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit3.apply();
                            editorEdit3.commit();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.J(15000);
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.K(15000);
                        break;
                    case 7:
                        if (playStreamEPGActivity2.f28867M1.equals("yes")) {
                            playStreamEPGActivity2.X();
                        } else {
                            playStreamEPGActivity2.O();
                            if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                                if (playStreamEPGActivity2.f28910f1.equals("paused")) {
                                    playStreamEPGActivity2.f28859J2.S(true);
                                    playStreamEPGActivity2.f28859J2.C();
                                    playStreamEPGActivity2.f28910f1 = "playing";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                } else {
                                    playStreamEPGActivity2.R();
                                    playStreamEPGActivity2.f28910f1 = "paused";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                }
                            } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && (mediaPlayer = playStreamEPGActivity2.f28911f2) != null) {
                                if (mediaPlayer.isPlaying()) {
                                    playStreamEPGActivity2.f28911f2.pause();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                } else {
                                    playStreamEPGActivity2.f28911f2.play();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                }
                            }
                            playStreamEPGActivity2.f28913g1.requestFocus();
                        }
                        break;
                    case 8:
                        if (playStreamEPGActivity2.f28926k2) {
                            playStreamEPGActivity2.f28836C0.setVisibility(8);
                            playStreamEPGActivity2.f28926k2 = false;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        } else {
                            playStreamEPGActivity2.f28836C0.setVisibility(0);
                            playStreamEPGActivity2.f28926k2 = true;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        }
                        break;
                    case 9:
                        String str10 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.finish();
                        break;
                    case 10:
                        String str11 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.G();
                        break;
                    case 11:
                        String str12 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.b0();
                        break;
                    case 12:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.a0();
                        break;
                    case 13:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.T();
                        break;
                    default:
                        String str15 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.Q();
                        break;
                }
            }
        });
        this.f28908e2 = (SurfaceView) findViewById(R.id.surfaceView);
        final int i14 = 11;
        imageButton3.setOnClickListener(new View.OnClickListener(this) { // from class: b7.Y0

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10255H;

            {
                this.f10255H = this;
            }

            /* JADX WARN: Code duplicated, block: B:65:0x0154  */
            /* JADX WARN: Type inference failed for: r0v13, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v18, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v3, types: [b7.a1] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String str3;
                MediaPlayer mediaPlayer;
                int i15 = i14;
                final int i16 = 2;
                final int i17 = 0;
                final int i18 = 1;
                final PlayStreamEPGActivity playStreamEPGActivity2 = this.f10255H;
                switch (i15) {
                    case 0:
                        String str4 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getSpuTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] spuTracks = playStreamEPGActivity2.f28911f2.getSpuTracks();
                                    String[] strArr = new String[spuTracks.length];
                                    String[] strArr2 = new String[spuTracks.length];
                                    int i19 = 0;
                                    for (int i110 = 0; i110 < spuTracks.length; i110++) {
                                        MediaPlayer.TrackDescription trackDescription = spuTracks[i110];
                                        Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - loadSpuTrack " + trackDescription.name + ", id " + trackDescription.id);
                                        int spuTrack = playStreamEPGActivity2.f28911f2.getSpuTrack();
                                        int i111 = trackDescription.id;
                                        if (spuTrack == i111) {
                                            i19 = i110;
                                        }
                                        strArr[i110] = String.valueOf(i111);
                                        strArr2[i110] = trackDescription.name;
                                    }
                                    SharedPreferences.Editor editorEdit = playStreamEPGActivity2.f28909f0.edit();
                                    AlertDialog.Builder builder = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder.setTitle("Choose Subtitle Language");
                                    builder.setSingleChoiceItems(strArr2, i19, new DialogInterfaceOnClickListenerC0510d1(playStreamEPGActivity2, strArr, editorEdit, i17));
                                    builder.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i21 = i16;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i21) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 1:
                        PlayStreamEPGActivity playStreamEPGActivity3 = playStreamEPGActivity2.f28906e0;
                        View viewInflate = LayoutInflater.from(playStreamEPGActivity3).inflate(R.layout.xciptv_dialog_select_cc_url, (ViewGroup) null);
                        AlertDialog alertDialogCreate = new AlertDialog.Builder(playStreamEPGActivity3).create();
                        EditText editText = (EditText) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.ed_cc_url);
                        Button button3 = (Button) viewInflate.findViewById(R.id.btn_cc_cancel);
                        ((Button) viewInflate.findViewById(R.id.btn_cc_add)).setOnClickListener(new ViewOnClickListenerC0505c(playStreamEPGActivity2, editText, alertDialogCreate, 1));
                        button3.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 2));
                        alertDialogCreate.show();
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getVideoTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] videoTracks = playStreamEPGActivity2.f28911f2.getVideoTracks();
                                    final String[] strArr3 = new String[videoTracks.length];
                                    String[] strArr4 = new String[videoTracks.length];
                                    for (int i20 = 0; i20 < videoTracks.length; i20++) {
                                        MediaPlayer.TrackDescription trackDescription2 = videoTracks[i20];
                                        Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription2.name + ", id " + trackDescription2.id);
                                        strArr3[i20] = String.valueOf(trackDescription2.id);
                                        strArr4[i20] = trackDescription2.name;
                                    }
                                    AlertDialog.Builder builder2 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder2.setTitle("Choose Video Track");
                                    builder2.setSingleChoiceItems(strArr4, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i22) {
                                            int i23 = i17;
                                            String[] strArr7 = strArr3;
                                            PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                            switch (i23) {
                                                case 0:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i22]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                                default:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i22]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                            }
                                        }
                                    });
                                    builder2.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder2.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i21 = i17;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i21) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            playStreamEPGActivity2.f28862K2 = playStreamEPGActivity2.f28859J2.E();
                            if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                                playStreamEPGActivity2.f28865L2 = true;
                                e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i21 = i18;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i21) {
                                            case 0:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            case 1:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                        }
                                    }
                                }).U(playStreamEPGActivity2.f7985X.R(), null);
                                break;
                            }
                        } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                            if (playStreamEPGActivity2.f28911f2.getAudioTracksCount() == 0) {
                                playStreamEPGActivity2.F("No Audio Tracks Available.");
                            } else {
                                MediaPlayer.TrackDescription[] audioTracks = playStreamEPGActivity2.f28911f2.getAudioTracks();
                                final String[] strArr5 = new String[audioTracks.length];
                                String[] strArr6 = new String[audioTracks.length];
                                for (int i21 = 0; i21 < audioTracks.length; i21++) {
                                    MediaPlayer.TrackDescription trackDescription3 = audioTracks[i21];
                                    Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription3.name + ", id " + trackDescription3.id);
                                    strArr5[i21] = String.valueOf(trackDescription3.id);
                                    strArr6[i21] = trackDescription3.name;
                                }
                                AlertDialog.Builder builder3 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                builder3.setTitle("Choose Audio Track");
                                builder3.setSingleChoiceItems(strArr6, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i22) {
                                        int i23 = i18;
                                        String[] strArr7 = strArr5;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i23) {
                                            case 0:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i22]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i22]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                        }
                                    }
                                });
                                builder3.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                builder3.create().show();
                            }
                            break;
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 3;
                            }
                            int i22 = playStreamEPGActivity2.f28873O1;
                            if (i22 < 0 || i22 >= 5) {
                                str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                            } else {
                                if (i22 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                int i23 = playStreamEPGActivity2.f28873O1 + 1;
                                playStreamEPGActivity2.f28873O1 = i23;
                                if (i23 == 0) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(0);
                                    str3 = "FIT";
                                } else if (i23 == 1) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(1);
                                    str3 = "FIXED WIDTH";
                                } else if (i23 == 2) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(2);
                                    str3 = "FIXED HEIGHT";
                                } else if (i23 == 3) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(3);
                                    str3 = "FILL";
                                } else if (i23 == 4) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(4);
                                    str3 = "ZOOMED";
                                } else {
                                    str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                                }
                            }
                            Toast.makeText(playStreamEPGActivity2, "ZOOM: ".concat(str3), 0).show();
                            SharedPreferences.Editor editorEdit2 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit2.putString("video_resize_exo", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit2.apply();
                            editorEdit2.commit();
                        }
                        if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 4;
                            }
                            int i24 = playStreamEPGActivity2.f28873O1;
                            if (i24 >= 0 && i24 <= 5) {
                                if (i24 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                playStreamEPGActivity2.f28873O1++;
                                playStreamEPGActivity2.E(false);
                            }
                            SharedPreferences.Editor editorEdit3 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit3.putString("video_resize_vlc", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit3.apply();
                            editorEdit3.commit();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.J(15000);
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.K(15000);
                        break;
                    case 7:
                        if (playStreamEPGActivity2.f28867M1.equals("yes")) {
                            playStreamEPGActivity2.X();
                        } else {
                            playStreamEPGActivity2.O();
                            if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                                if (playStreamEPGActivity2.f28910f1.equals("paused")) {
                                    playStreamEPGActivity2.f28859J2.S(true);
                                    playStreamEPGActivity2.f28859J2.C();
                                    playStreamEPGActivity2.f28910f1 = "playing";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                } else {
                                    playStreamEPGActivity2.R();
                                    playStreamEPGActivity2.f28910f1 = "paused";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                }
                            } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && (mediaPlayer = playStreamEPGActivity2.f28911f2) != null) {
                                if (mediaPlayer.isPlaying()) {
                                    playStreamEPGActivity2.f28911f2.pause();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                } else {
                                    playStreamEPGActivity2.f28911f2.play();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                }
                            }
                            playStreamEPGActivity2.f28913g1.requestFocus();
                        }
                        break;
                    case 8:
                        if (playStreamEPGActivity2.f28926k2) {
                            playStreamEPGActivity2.f28836C0.setVisibility(8);
                            playStreamEPGActivity2.f28926k2 = false;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        } else {
                            playStreamEPGActivity2.f28836C0.setVisibility(0);
                            playStreamEPGActivity2.f28926k2 = true;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        }
                        break;
                    case 9:
                        String str10 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.finish();
                        break;
                    case 10:
                        String str11 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.G();
                        break;
                    case 11:
                        String str12 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.b0();
                        break;
                    case 12:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.a0();
                        break;
                    case 13:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.T();
                        break;
                    default:
                        String str15 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.Q();
                        break;
                }
            }
        });
        final int i15 = 12;
        imageButton4.setOnClickListener(new View.OnClickListener(this) { // from class: b7.Y0

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10255H;

            {
                this.f10255H = this;
            }

            /* JADX WARN: Code duplicated, block: B:65:0x0154  */
            /* JADX WARN: Type inference failed for: r0v13, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v18, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v3, types: [b7.a1] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String str3;
                MediaPlayer mediaPlayer;
                int i16 = i15;
                final int i17 = 2;
                final int i18 = 0;
                final int i19 = 1;
                final PlayStreamEPGActivity playStreamEPGActivity2 = this.f10255H;
                switch (i16) {
                    case 0:
                        String str4 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getSpuTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] spuTracks = playStreamEPGActivity2.f28911f2.getSpuTracks();
                                    String[] strArr = new String[spuTracks.length];
                                    String[] strArr2 = new String[spuTracks.length];
                                    int i110 = 0;
                                    for (int i111 = 0; i111 < spuTracks.length; i111++) {
                                        MediaPlayer.TrackDescription trackDescription = spuTracks[i111];
                                        Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - loadSpuTrack " + trackDescription.name + ", id " + trackDescription.id);
                                        int spuTrack = playStreamEPGActivity2.f28911f2.getSpuTrack();
                                        int i112 = trackDescription.id;
                                        if (spuTrack == i112) {
                                            i110 = i111;
                                        }
                                        strArr[i111] = String.valueOf(i112);
                                        strArr2[i111] = trackDescription.name;
                                    }
                                    SharedPreferences.Editor editorEdit = playStreamEPGActivity2.f28909f0.edit();
                                    AlertDialog.Builder builder = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder.setTitle("Choose Subtitle Language");
                                    builder.setSingleChoiceItems(strArr2, i110, new DialogInterfaceOnClickListenerC0510d1(playStreamEPGActivity2, strArr, editorEdit, i18));
                                    builder.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i21 = i17;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i21) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 1:
                        PlayStreamEPGActivity playStreamEPGActivity3 = playStreamEPGActivity2.f28906e0;
                        View viewInflate = LayoutInflater.from(playStreamEPGActivity3).inflate(R.layout.xciptv_dialog_select_cc_url, (ViewGroup) null);
                        AlertDialog alertDialogCreate = new AlertDialog.Builder(playStreamEPGActivity3).create();
                        EditText editText = (EditText) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.ed_cc_url);
                        Button button3 = (Button) viewInflate.findViewById(R.id.btn_cc_cancel);
                        ((Button) viewInflate.findViewById(R.id.btn_cc_add)).setOnClickListener(new ViewOnClickListenerC0505c(playStreamEPGActivity2, editText, alertDialogCreate, 1));
                        button3.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 2));
                        alertDialogCreate.show();
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getVideoTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] videoTracks = playStreamEPGActivity2.f28911f2.getVideoTracks();
                                    final String[] strArr3 = new String[videoTracks.length];
                                    String[] strArr4 = new String[videoTracks.length];
                                    for (int i20 = 0; i20 < videoTracks.length; i20++) {
                                        MediaPlayer.TrackDescription trackDescription2 = videoTracks[i20];
                                        Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription2.name + ", id " + trackDescription2.id);
                                        strArr3[i20] = String.valueOf(trackDescription2.id);
                                        strArr4[i20] = trackDescription2.name;
                                    }
                                    AlertDialog.Builder builder2 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder2.setTitle("Choose Video Track");
                                    builder2.setSingleChoiceItems(strArr4, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i22) {
                                            int i23 = i18;
                                            String[] strArr7 = strArr3;
                                            PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                            switch (i23) {
                                                case 0:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i22]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                                default:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i22]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                            }
                                        }
                                    });
                                    builder2.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder2.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i21 = i18;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i21) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            playStreamEPGActivity2.f28862K2 = playStreamEPGActivity2.f28859J2.E();
                            if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                                playStreamEPGActivity2.f28865L2 = true;
                                e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i21 = i19;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i21) {
                                            case 0:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            case 1:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                        }
                                    }
                                }).U(playStreamEPGActivity2.f7985X.R(), null);
                                break;
                            }
                        } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                            if (playStreamEPGActivity2.f28911f2.getAudioTracksCount() == 0) {
                                playStreamEPGActivity2.F("No Audio Tracks Available.");
                            } else {
                                MediaPlayer.TrackDescription[] audioTracks = playStreamEPGActivity2.f28911f2.getAudioTracks();
                                final String[] strArr5 = new String[audioTracks.length];
                                String[] strArr6 = new String[audioTracks.length];
                                for (int i21 = 0; i21 < audioTracks.length; i21++) {
                                    MediaPlayer.TrackDescription trackDescription3 = audioTracks[i21];
                                    Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription3.name + ", id " + trackDescription3.id);
                                    strArr5[i21] = String.valueOf(trackDescription3.id);
                                    strArr6[i21] = trackDescription3.name;
                                }
                                AlertDialog.Builder builder3 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                builder3.setTitle("Choose Audio Track");
                                builder3.setSingleChoiceItems(strArr6, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i22) {
                                        int i23 = i19;
                                        String[] strArr7 = strArr5;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i23) {
                                            case 0:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i22]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i22]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                        }
                                    }
                                });
                                builder3.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                builder3.create().show();
                            }
                            break;
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 3;
                            }
                            int i22 = playStreamEPGActivity2.f28873O1;
                            if (i22 < 0 || i22 >= 5) {
                                str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                            } else {
                                if (i22 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                int i23 = playStreamEPGActivity2.f28873O1 + 1;
                                playStreamEPGActivity2.f28873O1 = i23;
                                if (i23 == 0) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(0);
                                    str3 = "FIT";
                                } else if (i23 == 1) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(1);
                                    str3 = "FIXED WIDTH";
                                } else if (i23 == 2) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(2);
                                    str3 = "FIXED HEIGHT";
                                } else if (i23 == 3) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(3);
                                    str3 = "FILL";
                                } else if (i23 == 4) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(4);
                                    str3 = "ZOOMED";
                                } else {
                                    str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                                }
                            }
                            Toast.makeText(playStreamEPGActivity2, "ZOOM: ".concat(str3), 0).show();
                            SharedPreferences.Editor editorEdit2 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit2.putString("video_resize_exo", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit2.apply();
                            editorEdit2.commit();
                        }
                        if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 4;
                            }
                            int i24 = playStreamEPGActivity2.f28873O1;
                            if (i24 >= 0 && i24 <= 5) {
                                if (i24 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                playStreamEPGActivity2.f28873O1++;
                                playStreamEPGActivity2.E(false);
                            }
                            SharedPreferences.Editor editorEdit3 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit3.putString("video_resize_vlc", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit3.apply();
                            editorEdit3.commit();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.J(15000);
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.K(15000);
                        break;
                    case 7:
                        if (playStreamEPGActivity2.f28867M1.equals("yes")) {
                            playStreamEPGActivity2.X();
                        } else {
                            playStreamEPGActivity2.O();
                            if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                                if (playStreamEPGActivity2.f28910f1.equals("paused")) {
                                    playStreamEPGActivity2.f28859J2.S(true);
                                    playStreamEPGActivity2.f28859J2.C();
                                    playStreamEPGActivity2.f28910f1 = "playing";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                } else {
                                    playStreamEPGActivity2.R();
                                    playStreamEPGActivity2.f28910f1 = "paused";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                }
                            } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && (mediaPlayer = playStreamEPGActivity2.f28911f2) != null) {
                                if (mediaPlayer.isPlaying()) {
                                    playStreamEPGActivity2.f28911f2.pause();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                } else {
                                    playStreamEPGActivity2.f28911f2.play();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                }
                            }
                            playStreamEPGActivity2.f28913g1.requestFocus();
                        }
                        break;
                    case 8:
                        if (playStreamEPGActivity2.f28926k2) {
                            playStreamEPGActivity2.f28836C0.setVisibility(8);
                            playStreamEPGActivity2.f28926k2 = false;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        } else {
                            playStreamEPGActivity2.f28836C0.setVisibility(0);
                            playStreamEPGActivity2.f28926k2 = true;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        }
                        break;
                    case 9:
                        String str10 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.finish();
                        break;
                    case 10:
                        String str11 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.G();
                        break;
                    case 11:
                        String str12 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.b0();
                        break;
                    case 12:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.a0();
                        break;
                    case 13:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.T();
                        break;
                    default:
                        String str15 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.Q();
                        break;
                }
            }
        });
        button.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: b7.Z0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10257b;

            {
                this.f10257b = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z7) {
                int i16 = i14;
                PlayStreamEPGActivity playStreamEPGActivity2 = this.f10257b;
                switch (i16) {
                    case 0:
                        String str3 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 1:
                        String str4 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 7:
                        String str10 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 8:
                        String str11 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 9:
                        String str12 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 10:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        break;
                    default:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.getClass();
                        if (!z7) {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down not focused");
                        } else {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down focused");
                        }
                        break;
                }
            }
        });
        this.f28940p1 = (FrameLayout) findViewById(R.id.layout_mediacontrol);
        this.f28943q1 = (TextView) findViewById(R.id.txt_start_time);
        this.f28946r1 = (TextView) findViewById(R.id.txt_end_time);
        this.f28949s1 = (TextView) findViewById(R.id.txt_program_name);
        this.f28952t1 = (TextView) findViewById(R.id.txt_program_desc);
        this.f28955u1 = (TextView) findViewById(R.id.txt_program_desc2);
        this.f28961w1 = (SeekBar) findViewById(R.id.seekbar_video);
        this.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
        this.f28940p1.setVisibility(8);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f28957v0.getLayoutParams();
        layoutParams.width = (int) (((double) this.f28900b1) * 0.3d);
        layoutParams.height = this.f28898a1;
        this.f28957v0.setLayoutParams(layoutParams);
        Bundle extras = getIntent().getExtras();
        this.f28915h0 = extras.getString("name");
        f28828Q2 = extras.getString("streamurl");
        this.f28924k0 = extras.getString("stream_id");
        extras.getString("direct_source");
        S();
        if (this.f28909f0.contains("whichPanel")) {
            q0.q().g("ORT_WHICH_PANEL", this.f28909f0.getString("whichPanel", null));
        }
        String strC = q0.q().c("ORT_WHICH_CAT", "TV");
        strC.getClass();
        switch (strC) {
            case "SERIES":
                b8 = 0;
                break;
            case "TV":
                b8 = 1;
                break;
            case "FAV":
                b8 = 2;
                break;
            case "VOD":
                b8 = 3;
                break;
            case "RADIO":
                b8 = 4;
                break;
            case "CATCHUP":
                b8 = 5;
                break;
            default:
                b8 = -1;
                break;
        }
        if (b8 == 0) {
            this.f28921j0 = "0";
            Z();
            this.f28949s1.setText(this.f28915h0);
            this.f28849G1 = extras.getString("program_desc");
            this.f28957v0.setVisibility(8);
            this.f28955u1.setVisibility(8);
            this.f28937o1.setVisibility(8);
            SeriesActivity.f29084E0 = Integer.parseInt(extras.getString("position"));
            this.f28961w1.setFocusable(true);
            if (this.f28909f0.contains("whichplayer_series")) {
                if (this.f28909f0.getString("whichplayer_series", null).equals("EXO")) {
                    q0.q().g("ORT_WHICH_PLAYER", "EXO");
                } else {
                    q0.q().g("ORT_WHICH_PLAYER", "VLC");
                }
            }
            y();
            ((l) ((l) com.bumptech.glide.b.d(playStreamEPGActivity).n(extras.getString("movie_poster_from_list")).g()).f(R.drawable.xciptv_vod)).F(this.f28838C2);
        } else if (b8 == 1 || b8 == 2) {
            this.f28875P0 = Integer.parseInt(extras.getString("position"));
            this.f28961w1.setFocusable(false);
            if (this.f28909f0.contains("whichplayer_tv")) {
                if (this.f28909f0.getString("whichplayer_tv", null).equals("EXO")) {
                    q0.q().g("ORT_WHICH_PLAYER", "EXO");
                } else {
                    q0.q().g("ORT_WHICH_PLAYER", "VLC");
                }
            }
            new ArrayList();
            this.f28939p0 = new JSONArray((Collection) q0.u(playStreamEPGActivity, false, "all", "default", q0.q().c("ORT_CAT_NAME", HttpUrl.FRAGMENT_ENCODE_SET)));
            JSONArray jSONArray = new JSONArray((Collection) q0.t(playStreamEPGActivity));
            this.f28942q0 = jSONArray;
            this.f28951t0 = new String[jSONArray.length()];
            this.f28954u0 = new String[this.f28942q0.length()];
            for (i9 = 0; i9 < this.f28942q0.length(); i9++) {
                try {
                    JSONObject jSONObject = this.f28942q0.getJSONObject(i9);
                    this.f28954u0[i9] = jSONObject.getString("category_name");
                    this.f28951t0[i9] = jSONObject.getString("category_id");
                } catch (JSONException unused) {
                }
            }
            if (q0.q().c("ORT_CAT_NAME", HttpUrl.FRAGMENT_ENCODE_SET).toLowerCase().equals("recent search")) {
                this.f28855I1 = 1;
                this.f28847F2 = Methods.L(playStreamEPGActivity);
            } else {
                this.f28855I1 = Arrays.asList(this.f28954u0).indexOf(q0.q().c("ORT_CAT_NAME", HttpUrl.FRAGMENT_ENCODE_SET));
            }
            this.f28968y2 = this.f28954u0[this.f28855I1];
            if (U2.z("ORT_LIVE_TV_EPG_MODE", "yes", "yes")) {
                this.f28921j0 = "1";
                if (q0.q().a("ORT_isLoadLastLiveTVChannel", false)) {
                    q0.q().e("ORT_isLoadLastLiveTVChannel", false);
                    this.f28921j0 = "0";
                    Z();
                }
            } else {
                this.f28921j0 = "0";
                Z();
            }
            if (this.f28909f0.contains("livetv_mediacontrol")) {
                obj = null;
                if (this.f28909f0.getString("livetv_mediacontrol", null).equals("off")) {
                    x();
                } else {
                    y();
                }
            } else {
                obj = null;
                x();
            }
            new AsyncTaskC0522h1(this, obj).execute(new Void[0]);
        } else if (b8 == 3) {
            this.f28921j0 = "0";
            Z();
            this.f28949s1.setText(this.f28915h0);
            this.f28849G1 = extras.getString("program_desc");
            this.f28957v0.setVisibility(8);
            this.f28955u1.setVisibility(8);
            this.f28937o1.setVisibility(8);
            this.f28923j2 = extras.getString("isTrailer");
            this.f28961w1.setFocusable(true);
            if (this.f28909f0.contains("whichplayer_vod")) {
                if (this.f28909f0.getString("whichplayer_vod", null).equals("EXO")) {
                    q0.q().g("ORT_WHICH_PLAYER", "EXO");
                } else {
                    q0.q().g("ORT_WHICH_PLAYER", "VLC");
                }
            }
            y();
            ((l) ((l) com.bumptech.glide.b.d(playStreamEPGActivity).n(extras.getString("movie_poster_from_list")).g()).f(R.drawable.xciptv_vod)).F(this.f28838C2);
        } else if (b8 == 4 || b8 == 5) {
            this.f28875P0 = Integer.parseInt(extras.getString("position"));
            this.f28961w1.setFocusable(false);
            if (this.f28909f0.contains("whichplayer_tv")) {
                if (this.f28909f0.getString("whichplayer_tv", null).equals("EXO")) {
                    q0.q().g("ORT_WHICH_PLAYER", "EXO");
                } else {
                    q0.q().g("ORT_WHICH_PLAYER", "VLC");
                }
            }
            new ArrayList();
            this.f28939p0 = new JSONArray((Collection) q0.u(playStreamEPGActivity, false, "all", "default", q0.q().c("ORT_CAT_NAME", HttpUrl.FRAGMENT_ENCODE_SET)));
            JSONArray jSONArray2 = new JSONArray((Collection) q0.t(playStreamEPGActivity));
            this.f28942q0 = jSONArray2;
            this.f28951t0 = new String[jSONArray2.length()];
            this.f28954u0 = new String[this.f28942q0.length()];
            while (i9 < this.f28942q0.length()) {
                JSONObject jSONObject2 = this.f28942q0.getJSONObject(i9);
                this.f28954u0[i9] = jSONObject2.getString("category_name");
                this.f28951t0[i9] = jSONObject2.getString("category_id");
            }
            if (q0.q().c("ORT_CAT_NAME", HttpUrl.FRAGMENT_ENCODE_SET).toLowerCase().equals("recent search")) {
                this.f28855I1 = 1;
                this.f28847F2 = Methods.L(playStreamEPGActivity);
            } else {
                this.f28855I1 = Arrays.asList(this.f28954u0).indexOf(q0.q().c("ORT_CAT_NAME", HttpUrl.FRAGMENT_ENCODE_SET));
            }
            this.f28968y2 = this.f28954u0[this.f28855I1];
            if (U2.z("ORT_LIVE_TV_EPG_MODE", "yes", "yes")) {
                this.f28921j0 = "1";
                if (q0.q().a("ORT_isLoadLastLiveTVChannel", false)) {
                    q0.q().e("ORT_isLoadLastLiveTVChannel", false);
                    this.f28921j0 = "0";
                    Z();
                }
            } else {
                this.f28921j0 = "0";
                Z();
            }
            if (this.f28909f0.contains("livetv_mediacontrol")) {
                obj = null;
                if (this.f28909f0.getString("livetv_mediacontrol", null).equals("off")) {
                    x();
                } else {
                    y();
                }
            } else {
                obj = null;
                x();
            }
            new AsyncTaskC0522h1(this, obj).execute(new Void[0]);
        }
        this.f28949s1.setText(this.f28915h0);
        this.f28875P0 = Integer.parseInt(extras.getString("position"));
        this.f28856I2 = (PlayerView) findViewById(R.id.exo_player_view);
        FrameLayout frameLayout8 = (FrameLayout) findViewById(R.id.AdOverlayView);
        this.f28907e1 = frameLayout8;
        frameLayout8.setVisibility(8);
        String strC2 = q0.q().c("ORT_WHICH_PLAYER", "EXO");
        strC2.getClass();
        if (strC2.equals("EXO")) {
            this.f28925k1.setVisibility(0);
            this.f28966y0.setVisibility(0);
            this.f28934n1.setVisibility(0);
            this.f28931m1.setVisibility(0);
            this.f28856I2.setUseController(false);
            if (this.f28909f0.contains("video_resize_exo")) {
                str = null;
                this.f28873O1 = Integer.parseInt(this.f28909f0.getString("video_resize_exo", null));
            } else {
                str = null;
                this.f28873O1 = 3;
            }
            if (this.f28909f0.contains("plyer_exo_buffer") && this.f28909f0.getString("plyer_exo_buffer", str) != null) {
                int i16 = Integer.parseInt(this.f28909f0.getString("plyer_exo_buffer", str));
                this.f28879Q1 = i16;
                if (i16 == 0) {
                    this.f28876P1 = 1;
                    this.f28879Q1 = 2;
                    this.f28881R1 = 0;
                    this.f28883S1 = 0;
                } else {
                    this.f28876P1 = i16;
                    this.f28879Q1 = i16 + 2;
                    this.f28881R1 = 2500;
                    this.f28883S1 = DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT;
                }
            }
        } else if (strC2.equals("VLC")) {
            if (this.f28909f0.contains("video_resize_vlc")) {
                str2 = null;
                this.f28873O1 = Integer.parseInt(this.f28909f0.getString("video_resize_vlc", null));
            } else {
                str2 = null;
                this.f28873O1 = 4;
            }
            if (this.f28909f0.contains("plyer_vlc_buffer") && this.f28909f0.getString("plyer_vlc_buffer", str2) != null) {
                this.f28885T1 = U2.h(this.f28909f0, "plyer_vlc_buffer", str2, new StringBuilder("--live-caching="));
                this.f28887U1 = "--file-caching=" + this.f28887U1 + this.f28885T1;
                this.f28889V1 = "--network-caching=" + this.f28889V1 + this.f28885T1;
            }
            if (this.f28909f0.contains("hide_recording")) {
                if (this.f28909f0.getString("hide_recording", null).equals("yes")) {
                    i8 = 8;
                    this.f28937o1.setVisibility(8);
                } else {
                    i8 = 8;
                    this.f28937o1.setVisibility(0);
                }
                this.f28856I2.setVisibility(i8);
            } else {
                i8 = 8;
            }
            this.f28856I2.setVisibility(i8);
        }
        this.f28848G0.setAlpha(0.0f);
        final int i17 = 13;
        imageButton5.setOnClickListener(new View.OnClickListener(this) { // from class: b7.Y0

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10255H;

            {
                this.f10255H = this;
            }

            /* JADX WARN: Code duplicated, block: B:65:0x0154  */
            /* JADX WARN: Type inference failed for: r0v13, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v18, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v3, types: [b7.a1] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String str3;
                MediaPlayer mediaPlayer;
                int i18 = i17;
                final int i19 = 2;
                final int i110 = 0;
                final int i111 = 1;
                final PlayStreamEPGActivity playStreamEPGActivity2 = this.f10255H;
                switch (i18) {
                    case 0:
                        String str4 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getSpuTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] spuTracks = playStreamEPGActivity2.f28911f2.getSpuTracks();
                                    String[] strArr = new String[spuTracks.length];
                                    String[] strArr2 = new String[spuTracks.length];
                                    int i112 = 0;
                                    for (int i113 = 0; i113 < spuTracks.length; i113++) {
                                        MediaPlayer.TrackDescription trackDescription = spuTracks[i113];
                                        Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - loadSpuTrack " + trackDescription.name + ", id " + trackDescription.id);
                                        int spuTrack = playStreamEPGActivity2.f28911f2.getSpuTrack();
                                        int i114 = trackDescription.id;
                                        if (spuTrack == i114) {
                                            i112 = i113;
                                        }
                                        strArr[i113] = String.valueOf(i114);
                                        strArr2[i113] = trackDescription.name;
                                    }
                                    SharedPreferences.Editor editorEdit = playStreamEPGActivity2.f28909f0.edit();
                                    AlertDialog.Builder builder = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder.setTitle("Choose Subtitle Language");
                                    builder.setSingleChoiceItems(strArr2, i112, new DialogInterfaceOnClickListenerC0510d1(playStreamEPGActivity2, strArr, editorEdit, i110));
                                    builder.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i21 = i19;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i21) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 1:
                        PlayStreamEPGActivity playStreamEPGActivity3 = playStreamEPGActivity2.f28906e0;
                        View viewInflate = LayoutInflater.from(playStreamEPGActivity3).inflate(R.layout.xciptv_dialog_select_cc_url, (ViewGroup) null);
                        AlertDialog alertDialogCreate = new AlertDialog.Builder(playStreamEPGActivity3).create();
                        EditText editText = (EditText) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.ed_cc_url);
                        Button button3 = (Button) viewInflate.findViewById(R.id.btn_cc_cancel);
                        ((Button) viewInflate.findViewById(R.id.btn_cc_add)).setOnClickListener(new ViewOnClickListenerC0505c(playStreamEPGActivity2, editText, alertDialogCreate, 1));
                        button3.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 2));
                        alertDialogCreate.show();
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getVideoTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] videoTracks = playStreamEPGActivity2.f28911f2.getVideoTracks();
                                    final String[] strArr3 = new String[videoTracks.length];
                                    String[] strArr4 = new String[videoTracks.length];
                                    for (int i20 = 0; i20 < videoTracks.length; i20++) {
                                        MediaPlayer.TrackDescription trackDescription2 = videoTracks[i20];
                                        Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription2.name + ", id " + trackDescription2.id);
                                        strArr3[i20] = String.valueOf(trackDescription2.id);
                                        strArr4[i20] = trackDescription2.name;
                                    }
                                    AlertDialog.Builder builder2 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder2.setTitle("Choose Video Track");
                                    builder2.setSingleChoiceItems(strArr4, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i22) {
                                            int i23 = i110;
                                            String[] strArr7 = strArr3;
                                            PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                            switch (i23) {
                                                case 0:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i22]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                                default:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i22]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                            }
                                        }
                                    });
                                    builder2.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder2.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i21 = i110;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i21) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            playStreamEPGActivity2.f28862K2 = playStreamEPGActivity2.f28859J2.E();
                            if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                                playStreamEPGActivity2.f28865L2 = true;
                                e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i21 = i111;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i21) {
                                            case 0:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            case 1:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                        }
                                    }
                                }).U(playStreamEPGActivity2.f7985X.R(), null);
                                break;
                            }
                        } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                            if (playStreamEPGActivity2.f28911f2.getAudioTracksCount() == 0) {
                                playStreamEPGActivity2.F("No Audio Tracks Available.");
                            } else {
                                MediaPlayer.TrackDescription[] audioTracks = playStreamEPGActivity2.f28911f2.getAudioTracks();
                                final String[] strArr5 = new String[audioTracks.length];
                                String[] strArr6 = new String[audioTracks.length];
                                for (int i21 = 0; i21 < audioTracks.length; i21++) {
                                    MediaPlayer.TrackDescription trackDescription3 = audioTracks[i21];
                                    Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription3.name + ", id " + trackDescription3.id);
                                    strArr5[i21] = String.valueOf(trackDescription3.id);
                                    strArr6[i21] = trackDescription3.name;
                                }
                                AlertDialog.Builder builder3 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                builder3.setTitle("Choose Audio Track");
                                builder3.setSingleChoiceItems(strArr6, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i22) {
                                        int i23 = i111;
                                        String[] strArr7 = strArr5;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i23) {
                                            case 0:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i22]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i22]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                        }
                                    }
                                });
                                builder3.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                builder3.create().show();
                            }
                            break;
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 3;
                            }
                            int i22 = playStreamEPGActivity2.f28873O1;
                            if (i22 < 0 || i22 >= 5) {
                                str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                            } else {
                                if (i22 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                int i23 = playStreamEPGActivity2.f28873O1 + 1;
                                playStreamEPGActivity2.f28873O1 = i23;
                                if (i23 == 0) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(0);
                                    str3 = "FIT";
                                } else if (i23 == 1) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(1);
                                    str3 = "FIXED WIDTH";
                                } else if (i23 == 2) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(2);
                                    str3 = "FIXED HEIGHT";
                                } else if (i23 == 3) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(3);
                                    str3 = "FILL";
                                } else if (i23 == 4) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(4);
                                    str3 = "ZOOMED";
                                } else {
                                    str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                                }
                            }
                            Toast.makeText(playStreamEPGActivity2, "ZOOM: ".concat(str3), 0).show();
                            SharedPreferences.Editor editorEdit2 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit2.putString("video_resize_exo", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit2.apply();
                            editorEdit2.commit();
                        }
                        if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 4;
                            }
                            int i24 = playStreamEPGActivity2.f28873O1;
                            if (i24 >= 0 && i24 <= 5) {
                                if (i24 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                playStreamEPGActivity2.f28873O1++;
                                playStreamEPGActivity2.E(false);
                            }
                            SharedPreferences.Editor editorEdit3 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit3.putString("video_resize_vlc", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit3.apply();
                            editorEdit3.commit();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.J(15000);
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.K(15000);
                        break;
                    case 7:
                        if (playStreamEPGActivity2.f28867M1.equals("yes")) {
                            playStreamEPGActivity2.X();
                        } else {
                            playStreamEPGActivity2.O();
                            if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                                if (playStreamEPGActivity2.f28910f1.equals("paused")) {
                                    playStreamEPGActivity2.f28859J2.S(true);
                                    playStreamEPGActivity2.f28859J2.C();
                                    playStreamEPGActivity2.f28910f1 = "playing";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                } else {
                                    playStreamEPGActivity2.R();
                                    playStreamEPGActivity2.f28910f1 = "paused";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                }
                            } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && (mediaPlayer = playStreamEPGActivity2.f28911f2) != null) {
                                if (mediaPlayer.isPlaying()) {
                                    playStreamEPGActivity2.f28911f2.pause();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                } else {
                                    playStreamEPGActivity2.f28911f2.play();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                }
                            }
                            playStreamEPGActivity2.f28913g1.requestFocus();
                        }
                        break;
                    case 8:
                        if (playStreamEPGActivity2.f28926k2) {
                            playStreamEPGActivity2.f28836C0.setVisibility(8);
                            playStreamEPGActivity2.f28926k2 = false;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        } else {
                            playStreamEPGActivity2.f28836C0.setVisibility(0);
                            playStreamEPGActivity2.f28926k2 = true;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        }
                        break;
                    case 9:
                        String str10 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.finish();
                        break;
                    case 10:
                        String str11 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.G();
                        break;
                    case 11:
                        String str12 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.b0();
                        break;
                    case 12:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.a0();
                        break;
                    case 13:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.T();
                        break;
                    default:
                        String str15 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.Q();
                        break;
                }
            }
        });
        final int i18 = 14;
        imageButton6.setOnClickListener(new View.OnClickListener(this) { // from class: b7.Y0

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10255H;

            {
                this.f10255H = this;
            }

            /* JADX WARN: Code duplicated, block: B:65:0x0154  */
            /* JADX WARN: Type inference failed for: r0v13, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v18, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v3, types: [b7.a1] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String str3;
                MediaPlayer mediaPlayer;
                int i19 = i18;
                final int i110 = 2;
                final int i111 = 0;
                final int i112 = 1;
                final PlayStreamEPGActivity playStreamEPGActivity2 = this.f10255H;
                switch (i19) {
                    case 0:
                        String str4 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getSpuTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] spuTracks = playStreamEPGActivity2.f28911f2.getSpuTracks();
                                    String[] strArr = new String[spuTracks.length];
                                    String[] strArr2 = new String[spuTracks.length];
                                    int i113 = 0;
                                    for (int i114 = 0; i114 < spuTracks.length; i114++) {
                                        MediaPlayer.TrackDescription trackDescription = spuTracks[i114];
                                        Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - loadSpuTrack " + trackDescription.name + ", id " + trackDescription.id);
                                        int spuTrack = playStreamEPGActivity2.f28911f2.getSpuTrack();
                                        int i115 = trackDescription.id;
                                        if (spuTrack == i115) {
                                            i113 = i114;
                                        }
                                        strArr[i114] = String.valueOf(i115);
                                        strArr2[i114] = trackDescription.name;
                                    }
                                    SharedPreferences.Editor editorEdit = playStreamEPGActivity2.f28909f0.edit();
                                    AlertDialog.Builder builder = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder.setTitle("Choose Subtitle Language");
                                    builder.setSingleChoiceItems(strArr2, i113, new DialogInterfaceOnClickListenerC0510d1(playStreamEPGActivity2, strArr, editorEdit, i111));
                                    builder.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i21 = i110;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i21) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 1:
                        PlayStreamEPGActivity playStreamEPGActivity3 = playStreamEPGActivity2.f28906e0;
                        View viewInflate = LayoutInflater.from(playStreamEPGActivity3).inflate(R.layout.xciptv_dialog_select_cc_url, (ViewGroup) null);
                        AlertDialog alertDialogCreate = new AlertDialog.Builder(playStreamEPGActivity3).create();
                        EditText editText = (EditText) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.ed_cc_url);
                        Button button3 = (Button) viewInflate.findViewById(R.id.btn_cc_cancel);
                        ((Button) viewInflate.findViewById(R.id.btn_cc_add)).setOnClickListener(new ViewOnClickListenerC0505c(playStreamEPGActivity2, editText, alertDialogCreate, 1));
                        button3.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 2));
                        alertDialogCreate.show();
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getVideoTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] videoTracks = playStreamEPGActivity2.f28911f2.getVideoTracks();
                                    final String[] strArr3 = new String[videoTracks.length];
                                    String[] strArr4 = new String[videoTracks.length];
                                    for (int i20 = 0; i20 < videoTracks.length; i20++) {
                                        MediaPlayer.TrackDescription trackDescription2 = videoTracks[i20];
                                        Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription2.name + ", id " + trackDescription2.id);
                                        strArr3[i20] = String.valueOf(trackDescription2.id);
                                        strArr4[i20] = trackDescription2.name;
                                    }
                                    AlertDialog.Builder builder2 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder2.setTitle("Choose Video Track");
                                    builder2.setSingleChoiceItems(strArr4, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i22) {
                                            int i23 = i111;
                                            String[] strArr7 = strArr3;
                                            PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                            switch (i23) {
                                                case 0:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i22]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                                default:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i22]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                            }
                                        }
                                    });
                                    builder2.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder2.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i21 = i111;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i21) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            playStreamEPGActivity2.f28862K2 = playStreamEPGActivity2.f28859J2.E();
                            if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                                playStreamEPGActivity2.f28865L2 = true;
                                e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i21 = i112;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i21) {
                                            case 0:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            case 1:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                        }
                                    }
                                }).U(playStreamEPGActivity2.f7985X.R(), null);
                                break;
                            }
                        } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                            if (playStreamEPGActivity2.f28911f2.getAudioTracksCount() == 0) {
                                playStreamEPGActivity2.F("No Audio Tracks Available.");
                            } else {
                                MediaPlayer.TrackDescription[] audioTracks = playStreamEPGActivity2.f28911f2.getAudioTracks();
                                final String[] strArr5 = new String[audioTracks.length];
                                String[] strArr6 = new String[audioTracks.length];
                                for (int i21 = 0; i21 < audioTracks.length; i21++) {
                                    MediaPlayer.TrackDescription trackDescription3 = audioTracks[i21];
                                    Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription3.name + ", id " + trackDescription3.id);
                                    strArr5[i21] = String.valueOf(trackDescription3.id);
                                    strArr6[i21] = trackDescription3.name;
                                }
                                AlertDialog.Builder builder3 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                builder3.setTitle("Choose Audio Track");
                                builder3.setSingleChoiceItems(strArr6, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i22) {
                                        int i23 = i112;
                                        String[] strArr7 = strArr5;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i23) {
                                            case 0:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i22]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i22]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                        }
                                    }
                                });
                                builder3.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                builder3.create().show();
                            }
                            break;
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 3;
                            }
                            int i22 = playStreamEPGActivity2.f28873O1;
                            if (i22 < 0 || i22 >= 5) {
                                str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                            } else {
                                if (i22 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                int i23 = playStreamEPGActivity2.f28873O1 + 1;
                                playStreamEPGActivity2.f28873O1 = i23;
                                if (i23 == 0) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(0);
                                    str3 = "FIT";
                                } else if (i23 == 1) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(1);
                                    str3 = "FIXED WIDTH";
                                } else if (i23 == 2) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(2);
                                    str3 = "FIXED HEIGHT";
                                } else if (i23 == 3) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(3);
                                    str3 = "FILL";
                                } else if (i23 == 4) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(4);
                                    str3 = "ZOOMED";
                                } else {
                                    str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                                }
                            }
                            Toast.makeText(playStreamEPGActivity2, "ZOOM: ".concat(str3), 0).show();
                            SharedPreferences.Editor editorEdit2 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit2.putString("video_resize_exo", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit2.apply();
                            editorEdit2.commit();
                        }
                        if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 4;
                            }
                            int i24 = playStreamEPGActivity2.f28873O1;
                            if (i24 >= 0 && i24 <= 5) {
                                if (i24 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                playStreamEPGActivity2.f28873O1++;
                                playStreamEPGActivity2.E(false);
                            }
                            SharedPreferences.Editor editorEdit3 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit3.putString("video_resize_vlc", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit3.apply();
                            editorEdit3.commit();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.J(15000);
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.K(15000);
                        break;
                    case 7:
                        if (playStreamEPGActivity2.f28867M1.equals("yes")) {
                            playStreamEPGActivity2.X();
                        } else {
                            playStreamEPGActivity2.O();
                            if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                                if (playStreamEPGActivity2.f28910f1.equals("paused")) {
                                    playStreamEPGActivity2.f28859J2.S(true);
                                    playStreamEPGActivity2.f28859J2.C();
                                    playStreamEPGActivity2.f28910f1 = "playing";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                } else {
                                    playStreamEPGActivity2.R();
                                    playStreamEPGActivity2.f28910f1 = "paused";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                }
                            } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && (mediaPlayer = playStreamEPGActivity2.f28911f2) != null) {
                                if (mediaPlayer.isPlaying()) {
                                    playStreamEPGActivity2.f28911f2.pause();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                } else {
                                    playStreamEPGActivity2.f28911f2.play();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                }
                            }
                            playStreamEPGActivity2.f28913g1.requestFocus();
                        }
                        break;
                    case 8:
                        if (playStreamEPGActivity2.f28926k2) {
                            playStreamEPGActivity2.f28836C0.setVisibility(8);
                            playStreamEPGActivity2.f28926k2 = false;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        } else {
                            playStreamEPGActivity2.f28836C0.setVisibility(0);
                            playStreamEPGActivity2.f28926k2 = true;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        }
                        break;
                    case 9:
                        String str10 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.finish();
                        break;
                    case 10:
                        String str11 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.G();
                        break;
                    case 11:
                        String str12 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.b0();
                        break;
                    case 12:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.a0();
                        break;
                    case 13:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.T();
                        break;
                    default:
                        String str15 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.Q();
                        break;
                }
            }
        });
        final int i19 = 0;
        this.f28925k1.setOnClickListener(new View.OnClickListener(this) { // from class: b7.Y0

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10255H;

            {
                this.f10255H = this;
            }

            /* JADX WARN: Code duplicated, block: B:65:0x0154  */
            /* JADX WARN: Type inference failed for: r0v13, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v18, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v3, types: [b7.a1] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String str3;
                MediaPlayer mediaPlayer;
                int i110 = i19;
                final int i111 = 2;
                final int i112 = 0;
                final int i113 = 1;
                final PlayStreamEPGActivity playStreamEPGActivity2 = this.f10255H;
                switch (i110) {
                    case 0:
                        String str4 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getSpuTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] spuTracks = playStreamEPGActivity2.f28911f2.getSpuTracks();
                                    String[] strArr = new String[spuTracks.length];
                                    String[] strArr2 = new String[spuTracks.length];
                                    int i114 = 0;
                                    for (int i115 = 0; i115 < spuTracks.length; i115++) {
                                        MediaPlayer.TrackDescription trackDescription = spuTracks[i115];
                                        Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - loadSpuTrack " + trackDescription.name + ", id " + trackDescription.id);
                                        int spuTrack = playStreamEPGActivity2.f28911f2.getSpuTrack();
                                        int i116 = trackDescription.id;
                                        if (spuTrack == i116) {
                                            i114 = i115;
                                        }
                                        strArr[i115] = String.valueOf(i116);
                                        strArr2[i115] = trackDescription.name;
                                    }
                                    SharedPreferences.Editor editorEdit = playStreamEPGActivity2.f28909f0.edit();
                                    AlertDialog.Builder builder = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder.setTitle("Choose Subtitle Language");
                                    builder.setSingleChoiceItems(strArr2, i114, new DialogInterfaceOnClickListenerC0510d1(playStreamEPGActivity2, strArr, editorEdit, i112));
                                    builder.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i21 = i111;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i21) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 1:
                        PlayStreamEPGActivity playStreamEPGActivity3 = playStreamEPGActivity2.f28906e0;
                        View viewInflate = LayoutInflater.from(playStreamEPGActivity3).inflate(R.layout.xciptv_dialog_select_cc_url, (ViewGroup) null);
                        AlertDialog alertDialogCreate = new AlertDialog.Builder(playStreamEPGActivity3).create();
                        EditText editText = (EditText) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.ed_cc_url);
                        Button button3 = (Button) viewInflate.findViewById(R.id.btn_cc_cancel);
                        ((Button) viewInflate.findViewById(R.id.btn_cc_add)).setOnClickListener(new ViewOnClickListenerC0505c(playStreamEPGActivity2, editText, alertDialogCreate, 1));
                        button3.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 2));
                        alertDialogCreate.show();
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getVideoTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] videoTracks = playStreamEPGActivity2.f28911f2.getVideoTracks();
                                    final String[] strArr3 = new String[videoTracks.length];
                                    String[] strArr4 = new String[videoTracks.length];
                                    for (int i20 = 0; i20 < videoTracks.length; i20++) {
                                        MediaPlayer.TrackDescription trackDescription2 = videoTracks[i20];
                                        Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription2.name + ", id " + trackDescription2.id);
                                        strArr3[i20] = String.valueOf(trackDescription2.id);
                                        strArr4[i20] = trackDescription2.name;
                                    }
                                    AlertDialog.Builder builder2 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder2.setTitle("Choose Video Track");
                                    builder2.setSingleChoiceItems(strArr4, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i22) {
                                            int i23 = i112;
                                            String[] strArr7 = strArr3;
                                            PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                            switch (i23) {
                                                case 0:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i22]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                                default:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i22]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                            }
                                        }
                                    });
                                    builder2.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder2.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i21 = i112;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i21) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            playStreamEPGActivity2.f28862K2 = playStreamEPGActivity2.f28859J2.E();
                            if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                                playStreamEPGActivity2.f28865L2 = true;
                                e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i21 = i113;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i21) {
                                            case 0:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            case 1:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                        }
                                    }
                                }).U(playStreamEPGActivity2.f7985X.R(), null);
                                break;
                            }
                        } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                            if (playStreamEPGActivity2.f28911f2.getAudioTracksCount() == 0) {
                                playStreamEPGActivity2.F("No Audio Tracks Available.");
                            } else {
                                MediaPlayer.TrackDescription[] audioTracks = playStreamEPGActivity2.f28911f2.getAudioTracks();
                                final String[] strArr5 = new String[audioTracks.length];
                                String[] strArr6 = new String[audioTracks.length];
                                for (int i21 = 0; i21 < audioTracks.length; i21++) {
                                    MediaPlayer.TrackDescription trackDescription3 = audioTracks[i21];
                                    Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription3.name + ", id " + trackDescription3.id);
                                    strArr5[i21] = String.valueOf(trackDescription3.id);
                                    strArr6[i21] = trackDescription3.name;
                                }
                                AlertDialog.Builder builder3 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                builder3.setTitle("Choose Audio Track");
                                builder3.setSingleChoiceItems(strArr6, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i22) {
                                        int i23 = i113;
                                        String[] strArr7 = strArr5;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i23) {
                                            case 0:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i22]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i22]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                        }
                                    }
                                });
                                builder3.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                builder3.create().show();
                            }
                            break;
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 3;
                            }
                            int i22 = playStreamEPGActivity2.f28873O1;
                            if (i22 < 0 || i22 >= 5) {
                                str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                            } else {
                                if (i22 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                int i23 = playStreamEPGActivity2.f28873O1 + 1;
                                playStreamEPGActivity2.f28873O1 = i23;
                                if (i23 == 0) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(0);
                                    str3 = "FIT";
                                } else if (i23 == 1) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(1);
                                    str3 = "FIXED WIDTH";
                                } else if (i23 == 2) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(2);
                                    str3 = "FIXED HEIGHT";
                                } else if (i23 == 3) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(3);
                                    str3 = "FILL";
                                } else if (i23 == 4) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(4);
                                    str3 = "ZOOMED";
                                } else {
                                    str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                                }
                            }
                            Toast.makeText(playStreamEPGActivity2, "ZOOM: ".concat(str3), 0).show();
                            SharedPreferences.Editor editorEdit2 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit2.putString("video_resize_exo", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit2.apply();
                            editorEdit2.commit();
                        }
                        if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 4;
                            }
                            int i24 = playStreamEPGActivity2.f28873O1;
                            if (i24 >= 0 && i24 <= 5) {
                                if (i24 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                playStreamEPGActivity2.f28873O1++;
                                playStreamEPGActivity2.E(false);
                            }
                            SharedPreferences.Editor editorEdit3 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit3.putString("video_resize_vlc", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit3.apply();
                            editorEdit3.commit();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.J(15000);
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.K(15000);
                        break;
                    case 7:
                        if (playStreamEPGActivity2.f28867M1.equals("yes")) {
                            playStreamEPGActivity2.X();
                        } else {
                            playStreamEPGActivity2.O();
                            if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                                if (playStreamEPGActivity2.f28910f1.equals("paused")) {
                                    playStreamEPGActivity2.f28859J2.S(true);
                                    playStreamEPGActivity2.f28859J2.C();
                                    playStreamEPGActivity2.f28910f1 = "playing";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                } else {
                                    playStreamEPGActivity2.R();
                                    playStreamEPGActivity2.f28910f1 = "paused";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                }
                            } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && (mediaPlayer = playStreamEPGActivity2.f28911f2) != null) {
                                if (mediaPlayer.isPlaying()) {
                                    playStreamEPGActivity2.f28911f2.pause();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                } else {
                                    playStreamEPGActivity2.f28911f2.play();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                }
                            }
                            playStreamEPGActivity2.f28913g1.requestFocus();
                        }
                        break;
                    case 8:
                        if (playStreamEPGActivity2.f28926k2) {
                            playStreamEPGActivity2.f28836C0.setVisibility(8);
                            playStreamEPGActivity2.f28926k2 = false;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        } else {
                            playStreamEPGActivity2.f28836C0.setVisibility(0);
                            playStreamEPGActivity2.f28926k2 = true;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        }
                        break;
                    case 9:
                        String str10 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.finish();
                        break;
                    case 10:
                        String str11 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.G();
                        break;
                    case 11:
                        String str12 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.b0();
                        break;
                    case 12:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.a0();
                        break;
                    case 13:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.T();
                        break;
                    default:
                        String str15 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.Q();
                        break;
                }
            }
        });
        final int i20 = 1;
        this.f28928l1.setOnClickListener(new View.OnClickListener(this) { // from class: b7.Y0

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10255H;

            {
                this.f10255H = this;
            }

            /* JADX WARN: Code duplicated, block: B:65:0x0154  */
            /* JADX WARN: Type inference failed for: r0v13, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v18, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v3, types: [b7.a1] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String str3;
                MediaPlayer mediaPlayer;
                int i110 = i20;
                final int i111 = 2;
                final int i112 = 0;
                final int i113 = 1;
                final PlayStreamEPGActivity playStreamEPGActivity2 = this.f10255H;
                switch (i110) {
                    case 0:
                        String str4 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getSpuTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] spuTracks = playStreamEPGActivity2.f28911f2.getSpuTracks();
                                    String[] strArr = new String[spuTracks.length];
                                    String[] strArr2 = new String[spuTracks.length];
                                    int i114 = 0;
                                    for (int i115 = 0; i115 < spuTracks.length; i115++) {
                                        MediaPlayer.TrackDescription trackDescription = spuTracks[i115];
                                        Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - loadSpuTrack " + trackDescription.name + ", id " + trackDescription.id);
                                        int spuTrack = playStreamEPGActivity2.f28911f2.getSpuTrack();
                                        int i116 = trackDescription.id;
                                        if (spuTrack == i116) {
                                            i114 = i115;
                                        }
                                        strArr[i115] = String.valueOf(i116);
                                        strArr2[i115] = trackDescription.name;
                                    }
                                    SharedPreferences.Editor editorEdit = playStreamEPGActivity2.f28909f0.edit();
                                    AlertDialog.Builder builder = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder.setTitle("Choose Subtitle Language");
                                    builder.setSingleChoiceItems(strArr2, i114, new DialogInterfaceOnClickListenerC0510d1(playStreamEPGActivity2, strArr, editorEdit, i112));
                                    builder.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i21 = i111;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i21) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 1:
                        PlayStreamEPGActivity playStreamEPGActivity3 = playStreamEPGActivity2.f28906e0;
                        View viewInflate = LayoutInflater.from(playStreamEPGActivity3).inflate(R.layout.xciptv_dialog_select_cc_url, (ViewGroup) null);
                        AlertDialog alertDialogCreate = new AlertDialog.Builder(playStreamEPGActivity3).create();
                        EditText editText = (EditText) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.ed_cc_url);
                        Button button3 = (Button) viewInflate.findViewById(R.id.btn_cc_cancel);
                        ((Button) viewInflate.findViewById(R.id.btn_cc_add)).setOnClickListener(new ViewOnClickListenerC0505c(playStreamEPGActivity2, editText, alertDialogCreate, 1));
                        button3.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 2));
                        alertDialogCreate.show();
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getVideoTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] videoTracks = playStreamEPGActivity2.f28911f2.getVideoTracks();
                                    final String[] strArr3 = new String[videoTracks.length];
                                    String[] strArr4 = new String[videoTracks.length];
                                    for (int i21 = 0; i21 < videoTracks.length; i21++) {
                                        MediaPlayer.TrackDescription trackDescription2 = videoTracks[i21];
                                        Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription2.name + ", id " + trackDescription2.id);
                                        strArr3[i21] = String.valueOf(trackDescription2.id);
                                        strArr4[i21] = trackDescription2.name;
                                    }
                                    AlertDialog.Builder builder2 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder2.setTitle("Choose Video Track");
                                    builder2.setSingleChoiceItems(strArr4, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i22) {
                                            int i23 = i112;
                                            String[] strArr7 = strArr3;
                                            PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                            switch (i23) {
                                                case 0:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i22]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                                default:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i22]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                            }
                                        }
                                    });
                                    builder2.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder2.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i22 = i112;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i22) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            playStreamEPGActivity2.f28862K2 = playStreamEPGActivity2.f28859J2.E();
                            if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                                playStreamEPGActivity2.f28865L2 = true;
                                e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i22 = i113;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i22) {
                                            case 0:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            case 1:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                        }
                                    }
                                }).U(playStreamEPGActivity2.f7985X.R(), null);
                                break;
                            }
                        } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                            if (playStreamEPGActivity2.f28911f2.getAudioTracksCount() == 0) {
                                playStreamEPGActivity2.F("No Audio Tracks Available.");
                            } else {
                                MediaPlayer.TrackDescription[] audioTracks = playStreamEPGActivity2.f28911f2.getAudioTracks();
                                final String[] strArr5 = new String[audioTracks.length];
                                String[] strArr6 = new String[audioTracks.length];
                                for (int i22 = 0; i22 < audioTracks.length; i22++) {
                                    MediaPlayer.TrackDescription trackDescription3 = audioTracks[i22];
                                    Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription3.name + ", id " + trackDescription3.id);
                                    strArr5[i22] = String.valueOf(trackDescription3.id);
                                    strArr6[i22] = trackDescription3.name;
                                }
                                AlertDialog.Builder builder3 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                builder3.setTitle("Choose Audio Track");
                                builder3.setSingleChoiceItems(strArr6, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i23) {
                                        int i24 = i113;
                                        String[] strArr7 = strArr5;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i24) {
                                            case 0:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i23]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i23]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                        }
                                    }
                                });
                                builder3.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                builder3.create().show();
                            }
                            break;
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 3;
                            }
                            int i23 = playStreamEPGActivity2.f28873O1;
                            if (i23 < 0 || i23 >= 5) {
                                str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                            } else {
                                if (i23 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                int i24 = playStreamEPGActivity2.f28873O1 + 1;
                                playStreamEPGActivity2.f28873O1 = i24;
                                if (i24 == 0) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(0);
                                    str3 = "FIT";
                                } else if (i24 == 1) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(1);
                                    str3 = "FIXED WIDTH";
                                } else if (i24 == 2) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(2);
                                    str3 = "FIXED HEIGHT";
                                } else if (i24 == 3) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(3);
                                    str3 = "FILL";
                                } else if (i24 == 4) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(4);
                                    str3 = "ZOOMED";
                                } else {
                                    str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                                }
                            }
                            Toast.makeText(playStreamEPGActivity2, "ZOOM: ".concat(str3), 0).show();
                            SharedPreferences.Editor editorEdit2 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit2.putString("video_resize_exo", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit2.apply();
                            editorEdit2.commit();
                        }
                        if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 4;
                            }
                            int i25 = playStreamEPGActivity2.f28873O1;
                            if (i25 >= 0 && i25 <= 5) {
                                if (i25 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                playStreamEPGActivity2.f28873O1++;
                                playStreamEPGActivity2.E(false);
                            }
                            SharedPreferences.Editor editorEdit3 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit3.putString("video_resize_vlc", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit3.apply();
                            editorEdit3.commit();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.J(15000);
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.K(15000);
                        break;
                    case 7:
                        if (playStreamEPGActivity2.f28867M1.equals("yes")) {
                            playStreamEPGActivity2.X();
                        } else {
                            playStreamEPGActivity2.O();
                            if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                                if (playStreamEPGActivity2.f28910f1.equals("paused")) {
                                    playStreamEPGActivity2.f28859J2.S(true);
                                    playStreamEPGActivity2.f28859J2.C();
                                    playStreamEPGActivity2.f28910f1 = "playing";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                } else {
                                    playStreamEPGActivity2.R();
                                    playStreamEPGActivity2.f28910f1 = "paused";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                }
                            } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && (mediaPlayer = playStreamEPGActivity2.f28911f2) != null) {
                                if (mediaPlayer.isPlaying()) {
                                    playStreamEPGActivity2.f28911f2.pause();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                } else {
                                    playStreamEPGActivity2.f28911f2.play();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                }
                            }
                            playStreamEPGActivity2.f28913g1.requestFocus();
                        }
                        break;
                    case 8:
                        if (playStreamEPGActivity2.f28926k2) {
                            playStreamEPGActivity2.f28836C0.setVisibility(8);
                            playStreamEPGActivity2.f28926k2 = false;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        } else {
                            playStreamEPGActivity2.f28836C0.setVisibility(0);
                            playStreamEPGActivity2.f28926k2 = true;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        }
                        break;
                    case 9:
                        String str10 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.finish();
                        break;
                    case 10:
                        String str11 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.G();
                        break;
                    case 11:
                        String str12 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.b0();
                        break;
                    case 12:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.a0();
                        break;
                    case 13:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.T();
                        break;
                    default:
                        String str15 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.Q();
                        break;
                }
            }
        });
        final int i21 = 2;
        this.f28934n1.setOnClickListener(new View.OnClickListener(this) { // from class: b7.Y0

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10255H;

            {
                this.f10255H = this;
            }

            /* JADX WARN: Code duplicated, block: B:65:0x0154  */
            /* JADX WARN: Type inference failed for: r0v13, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v18, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v3, types: [b7.a1] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String str3;
                MediaPlayer mediaPlayer;
                int i110 = i21;
                final int i111 = 2;
                final int i112 = 0;
                final int i113 = 1;
                final PlayStreamEPGActivity playStreamEPGActivity2 = this.f10255H;
                switch (i110) {
                    case 0:
                        String str4 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getSpuTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] spuTracks = playStreamEPGActivity2.f28911f2.getSpuTracks();
                                    String[] strArr = new String[spuTracks.length];
                                    String[] strArr2 = new String[spuTracks.length];
                                    int i114 = 0;
                                    for (int i115 = 0; i115 < spuTracks.length; i115++) {
                                        MediaPlayer.TrackDescription trackDescription = spuTracks[i115];
                                        Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - loadSpuTrack " + trackDescription.name + ", id " + trackDescription.id);
                                        int spuTrack = playStreamEPGActivity2.f28911f2.getSpuTrack();
                                        int i116 = trackDescription.id;
                                        if (spuTrack == i116) {
                                            i114 = i115;
                                        }
                                        strArr[i115] = String.valueOf(i116);
                                        strArr2[i115] = trackDescription.name;
                                    }
                                    SharedPreferences.Editor editorEdit = playStreamEPGActivity2.f28909f0.edit();
                                    AlertDialog.Builder builder = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder.setTitle("Choose Subtitle Language");
                                    builder.setSingleChoiceItems(strArr2, i114, new DialogInterfaceOnClickListenerC0510d1(playStreamEPGActivity2, strArr, editorEdit, i112));
                                    builder.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i22 = i111;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i22) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 1:
                        PlayStreamEPGActivity playStreamEPGActivity3 = playStreamEPGActivity2.f28906e0;
                        View viewInflate = LayoutInflater.from(playStreamEPGActivity3).inflate(R.layout.xciptv_dialog_select_cc_url, (ViewGroup) null);
                        AlertDialog alertDialogCreate = new AlertDialog.Builder(playStreamEPGActivity3).create();
                        EditText editText = (EditText) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.ed_cc_url);
                        Button button3 = (Button) viewInflate.findViewById(R.id.btn_cc_cancel);
                        ((Button) viewInflate.findViewById(R.id.btn_cc_add)).setOnClickListener(new ViewOnClickListenerC0505c(playStreamEPGActivity2, editText, alertDialogCreate, 1));
                        button3.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 2));
                        alertDialogCreate.show();
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getVideoTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] videoTracks = playStreamEPGActivity2.f28911f2.getVideoTracks();
                                    final String[] strArr3 = new String[videoTracks.length];
                                    String[] strArr4 = new String[videoTracks.length];
                                    for (int i22 = 0; i22 < videoTracks.length; i22++) {
                                        MediaPlayer.TrackDescription trackDescription2 = videoTracks[i22];
                                        Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription2.name + ", id " + trackDescription2.id);
                                        strArr3[i22] = String.valueOf(trackDescription2.id);
                                        strArr4[i22] = trackDescription2.name;
                                    }
                                    AlertDialog.Builder builder2 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder2.setTitle("Choose Video Track");
                                    builder2.setSingleChoiceItems(strArr4, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i23) {
                                            int i24 = i112;
                                            String[] strArr7 = strArr3;
                                            PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                            switch (i24) {
                                                case 0:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i23]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                                default:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i23]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                            }
                                        }
                                    });
                                    builder2.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder2.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i23 = i112;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i23) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            playStreamEPGActivity2.f28862K2 = playStreamEPGActivity2.f28859J2.E();
                            if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                                playStreamEPGActivity2.f28865L2 = true;
                                e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i23 = i113;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i23) {
                                            case 0:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            case 1:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                        }
                                    }
                                }).U(playStreamEPGActivity2.f7985X.R(), null);
                                break;
                            }
                        } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                            if (playStreamEPGActivity2.f28911f2.getAudioTracksCount() == 0) {
                                playStreamEPGActivity2.F("No Audio Tracks Available.");
                            } else {
                                MediaPlayer.TrackDescription[] audioTracks = playStreamEPGActivity2.f28911f2.getAudioTracks();
                                final String[] strArr5 = new String[audioTracks.length];
                                String[] strArr6 = new String[audioTracks.length];
                                for (int i23 = 0; i23 < audioTracks.length; i23++) {
                                    MediaPlayer.TrackDescription trackDescription3 = audioTracks[i23];
                                    Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription3.name + ", id " + trackDescription3.id);
                                    strArr5[i23] = String.valueOf(trackDescription3.id);
                                    strArr6[i23] = trackDescription3.name;
                                }
                                AlertDialog.Builder builder3 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                builder3.setTitle("Choose Audio Track");
                                builder3.setSingleChoiceItems(strArr6, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i24) {
                                        int i25 = i113;
                                        String[] strArr7 = strArr5;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i25) {
                                            case 0:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i24]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i24]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                        }
                                    }
                                });
                                builder3.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                builder3.create().show();
                            }
                            break;
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 3;
                            }
                            int i24 = playStreamEPGActivity2.f28873O1;
                            if (i24 < 0 || i24 >= 5) {
                                str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                            } else {
                                if (i24 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                int i25 = playStreamEPGActivity2.f28873O1 + 1;
                                playStreamEPGActivity2.f28873O1 = i25;
                                if (i25 == 0) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(0);
                                    str3 = "FIT";
                                } else if (i25 == 1) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(1);
                                    str3 = "FIXED WIDTH";
                                } else if (i25 == 2) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(2);
                                    str3 = "FIXED HEIGHT";
                                } else if (i25 == 3) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(3);
                                    str3 = "FILL";
                                } else if (i25 == 4) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(4);
                                    str3 = "ZOOMED";
                                } else {
                                    str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                                }
                            }
                            Toast.makeText(playStreamEPGActivity2, "ZOOM: ".concat(str3), 0).show();
                            SharedPreferences.Editor editorEdit2 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit2.putString("video_resize_exo", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit2.apply();
                            editorEdit2.commit();
                        }
                        if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 4;
                            }
                            int i26 = playStreamEPGActivity2.f28873O1;
                            if (i26 >= 0 && i26 <= 5) {
                                if (i26 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                playStreamEPGActivity2.f28873O1++;
                                playStreamEPGActivity2.E(false);
                            }
                            SharedPreferences.Editor editorEdit3 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit3.putString("video_resize_vlc", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit3.apply();
                            editorEdit3.commit();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.J(15000);
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.K(15000);
                        break;
                    case 7:
                        if (playStreamEPGActivity2.f28867M1.equals("yes")) {
                            playStreamEPGActivity2.X();
                        } else {
                            playStreamEPGActivity2.O();
                            if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                                if (playStreamEPGActivity2.f28910f1.equals("paused")) {
                                    playStreamEPGActivity2.f28859J2.S(true);
                                    playStreamEPGActivity2.f28859J2.C();
                                    playStreamEPGActivity2.f28910f1 = "playing";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                } else {
                                    playStreamEPGActivity2.R();
                                    playStreamEPGActivity2.f28910f1 = "paused";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                }
                            } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && (mediaPlayer = playStreamEPGActivity2.f28911f2) != null) {
                                if (mediaPlayer.isPlaying()) {
                                    playStreamEPGActivity2.f28911f2.pause();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                } else {
                                    playStreamEPGActivity2.f28911f2.play();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                }
                            }
                            playStreamEPGActivity2.f28913g1.requestFocus();
                        }
                        break;
                    case 8:
                        if (playStreamEPGActivity2.f28926k2) {
                            playStreamEPGActivity2.f28836C0.setVisibility(8);
                            playStreamEPGActivity2.f28926k2 = false;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        } else {
                            playStreamEPGActivity2.f28836C0.setVisibility(0);
                            playStreamEPGActivity2.f28926k2 = true;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        }
                        break;
                    case 9:
                        String str10 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.finish();
                        break;
                    case 10:
                        String str11 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.G();
                        break;
                    case 11:
                        String str12 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.b0();
                        break;
                    case 12:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.a0();
                        break;
                    case 13:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.T();
                        break;
                    default:
                        String str15 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.Q();
                        break;
                }
            }
        });
        final int i22 = 3;
        this.f28931m1.setOnClickListener(new View.OnClickListener(this) { // from class: b7.Y0

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10255H;

            {
                this.f10255H = this;
            }

            /* JADX WARN: Code duplicated, block: B:65:0x0154  */
            /* JADX WARN: Type inference failed for: r0v13, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v18, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v3, types: [b7.a1] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String str3;
                MediaPlayer mediaPlayer;
                int i110 = i22;
                final int i111 = 2;
                final int i112 = 0;
                final int i113 = 1;
                final PlayStreamEPGActivity playStreamEPGActivity2 = this.f10255H;
                switch (i110) {
                    case 0:
                        String str4 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getSpuTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] spuTracks = playStreamEPGActivity2.f28911f2.getSpuTracks();
                                    String[] strArr = new String[spuTracks.length];
                                    String[] strArr2 = new String[spuTracks.length];
                                    int i114 = 0;
                                    for (int i115 = 0; i115 < spuTracks.length; i115++) {
                                        MediaPlayer.TrackDescription trackDescription = spuTracks[i115];
                                        Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - loadSpuTrack " + trackDescription.name + ", id " + trackDescription.id);
                                        int spuTrack = playStreamEPGActivity2.f28911f2.getSpuTrack();
                                        int i116 = trackDescription.id;
                                        if (spuTrack == i116) {
                                            i114 = i115;
                                        }
                                        strArr[i115] = String.valueOf(i116);
                                        strArr2[i115] = trackDescription.name;
                                    }
                                    SharedPreferences.Editor editorEdit = playStreamEPGActivity2.f28909f0.edit();
                                    AlertDialog.Builder builder = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder.setTitle("Choose Subtitle Language");
                                    builder.setSingleChoiceItems(strArr2, i114, new DialogInterfaceOnClickListenerC0510d1(playStreamEPGActivity2, strArr, editorEdit, i112));
                                    builder.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i23 = i111;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i23) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 1:
                        PlayStreamEPGActivity playStreamEPGActivity3 = playStreamEPGActivity2.f28906e0;
                        View viewInflate = LayoutInflater.from(playStreamEPGActivity3).inflate(R.layout.xciptv_dialog_select_cc_url, (ViewGroup) null);
                        AlertDialog alertDialogCreate = new AlertDialog.Builder(playStreamEPGActivity3).create();
                        EditText editText = (EditText) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.ed_cc_url);
                        Button button3 = (Button) viewInflate.findViewById(R.id.btn_cc_cancel);
                        ((Button) viewInflate.findViewById(R.id.btn_cc_add)).setOnClickListener(new ViewOnClickListenerC0505c(playStreamEPGActivity2, editText, alertDialogCreate, 1));
                        button3.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 2));
                        alertDialogCreate.show();
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getVideoTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] videoTracks = playStreamEPGActivity2.f28911f2.getVideoTracks();
                                    final String[] strArr3 = new String[videoTracks.length];
                                    String[] strArr4 = new String[videoTracks.length];
                                    for (int i23 = 0; i23 < videoTracks.length; i23++) {
                                        MediaPlayer.TrackDescription trackDescription2 = videoTracks[i23];
                                        Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription2.name + ", id " + trackDescription2.id);
                                        strArr3[i23] = String.valueOf(trackDescription2.id);
                                        strArr4[i23] = trackDescription2.name;
                                    }
                                    AlertDialog.Builder builder2 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder2.setTitle("Choose Video Track");
                                    builder2.setSingleChoiceItems(strArr4, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i24) {
                                            int i25 = i112;
                                            String[] strArr7 = strArr3;
                                            PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                            switch (i25) {
                                                case 0:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i24]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                                default:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i24]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                            }
                                        }
                                    });
                                    builder2.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder2.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i24 = i112;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i24) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            playStreamEPGActivity2.f28862K2 = playStreamEPGActivity2.f28859J2.E();
                            if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                                playStreamEPGActivity2.f28865L2 = true;
                                e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i24 = i113;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i24) {
                                            case 0:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            case 1:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                        }
                                    }
                                }).U(playStreamEPGActivity2.f7985X.R(), null);
                                break;
                            }
                        } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                            if (playStreamEPGActivity2.f28911f2.getAudioTracksCount() == 0) {
                                playStreamEPGActivity2.F("No Audio Tracks Available.");
                            } else {
                                MediaPlayer.TrackDescription[] audioTracks = playStreamEPGActivity2.f28911f2.getAudioTracks();
                                final String[] strArr5 = new String[audioTracks.length];
                                String[] strArr6 = new String[audioTracks.length];
                                for (int i24 = 0; i24 < audioTracks.length; i24++) {
                                    MediaPlayer.TrackDescription trackDescription3 = audioTracks[i24];
                                    Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription3.name + ", id " + trackDescription3.id);
                                    strArr5[i24] = String.valueOf(trackDescription3.id);
                                    strArr6[i24] = trackDescription3.name;
                                }
                                AlertDialog.Builder builder3 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                builder3.setTitle("Choose Audio Track");
                                builder3.setSingleChoiceItems(strArr6, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i25) {
                                        int i26 = i113;
                                        String[] strArr7 = strArr5;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i26) {
                                            case 0:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i25]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i25]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                        }
                                    }
                                });
                                builder3.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                builder3.create().show();
                            }
                            break;
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 3;
                            }
                            int i25 = playStreamEPGActivity2.f28873O1;
                            if (i25 < 0 || i25 >= 5) {
                                str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                            } else {
                                if (i25 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                int i26 = playStreamEPGActivity2.f28873O1 + 1;
                                playStreamEPGActivity2.f28873O1 = i26;
                                if (i26 == 0) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(0);
                                    str3 = "FIT";
                                } else if (i26 == 1) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(1);
                                    str3 = "FIXED WIDTH";
                                } else if (i26 == 2) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(2);
                                    str3 = "FIXED HEIGHT";
                                } else if (i26 == 3) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(3);
                                    str3 = "FILL";
                                } else if (i26 == 4) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(4);
                                    str3 = "ZOOMED";
                                } else {
                                    str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                                }
                            }
                            Toast.makeText(playStreamEPGActivity2, "ZOOM: ".concat(str3), 0).show();
                            SharedPreferences.Editor editorEdit2 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit2.putString("video_resize_exo", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit2.apply();
                            editorEdit2.commit();
                        }
                        if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 4;
                            }
                            int i27 = playStreamEPGActivity2.f28873O1;
                            if (i27 >= 0 && i27 <= 5) {
                                if (i27 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                playStreamEPGActivity2.f28873O1++;
                                playStreamEPGActivity2.E(false);
                            }
                            SharedPreferences.Editor editorEdit3 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit3.putString("video_resize_vlc", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit3.apply();
                            editorEdit3.commit();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.J(15000);
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.K(15000);
                        break;
                    case 7:
                        if (playStreamEPGActivity2.f28867M1.equals("yes")) {
                            playStreamEPGActivity2.X();
                        } else {
                            playStreamEPGActivity2.O();
                            if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                                if (playStreamEPGActivity2.f28910f1.equals("paused")) {
                                    playStreamEPGActivity2.f28859J2.S(true);
                                    playStreamEPGActivity2.f28859J2.C();
                                    playStreamEPGActivity2.f28910f1 = "playing";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                } else {
                                    playStreamEPGActivity2.R();
                                    playStreamEPGActivity2.f28910f1 = "paused";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                }
                            } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && (mediaPlayer = playStreamEPGActivity2.f28911f2) != null) {
                                if (mediaPlayer.isPlaying()) {
                                    playStreamEPGActivity2.f28911f2.pause();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                } else {
                                    playStreamEPGActivity2.f28911f2.play();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                }
                            }
                            playStreamEPGActivity2.f28913g1.requestFocus();
                        }
                        break;
                    case 8:
                        if (playStreamEPGActivity2.f28926k2) {
                            playStreamEPGActivity2.f28836C0.setVisibility(8);
                            playStreamEPGActivity2.f28926k2 = false;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        } else {
                            playStreamEPGActivity2.f28836C0.setVisibility(0);
                            playStreamEPGActivity2.f28926k2 = true;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        }
                        break;
                    case 9:
                        String str10 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.finish();
                        break;
                    case 10:
                        String str11 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.G();
                        break;
                    case 11:
                        String str12 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.b0();
                        break;
                    case 12:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.a0();
                        break;
                    case 13:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.T();
                        break;
                    default:
                        String str15 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.Q();
                        break;
                }
            }
        });
        final int i23 = 4;
        this.f28922j1.setOnClickListener(new View.OnClickListener(this) { // from class: b7.Y0

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10255H;

            {
                this.f10255H = this;
            }

            /* JADX WARN: Code duplicated, block: B:65:0x0154  */
            /* JADX WARN: Type inference failed for: r0v13, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v18, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v3, types: [b7.a1] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String str3;
                MediaPlayer mediaPlayer;
                int i110 = i23;
                final int i111 = 2;
                final int i112 = 0;
                final int i113 = 1;
                final PlayStreamEPGActivity playStreamEPGActivity2 = this.f10255H;
                switch (i110) {
                    case 0:
                        String str4 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getSpuTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] spuTracks = playStreamEPGActivity2.f28911f2.getSpuTracks();
                                    String[] strArr = new String[spuTracks.length];
                                    String[] strArr2 = new String[spuTracks.length];
                                    int i114 = 0;
                                    for (int i115 = 0; i115 < spuTracks.length; i115++) {
                                        MediaPlayer.TrackDescription trackDescription = spuTracks[i115];
                                        Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - loadSpuTrack " + trackDescription.name + ", id " + trackDescription.id);
                                        int spuTrack = playStreamEPGActivity2.f28911f2.getSpuTrack();
                                        int i116 = trackDescription.id;
                                        if (spuTrack == i116) {
                                            i114 = i115;
                                        }
                                        strArr[i115] = String.valueOf(i116);
                                        strArr2[i115] = trackDescription.name;
                                    }
                                    SharedPreferences.Editor editorEdit = playStreamEPGActivity2.f28909f0.edit();
                                    AlertDialog.Builder builder = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder.setTitle("Choose Subtitle Language");
                                    builder.setSingleChoiceItems(strArr2, i114, new DialogInterfaceOnClickListenerC0510d1(playStreamEPGActivity2, strArr, editorEdit, i112));
                                    builder.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i24 = i111;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i24) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 1:
                        PlayStreamEPGActivity playStreamEPGActivity3 = playStreamEPGActivity2.f28906e0;
                        View viewInflate = LayoutInflater.from(playStreamEPGActivity3).inflate(R.layout.xciptv_dialog_select_cc_url, (ViewGroup) null);
                        AlertDialog alertDialogCreate = new AlertDialog.Builder(playStreamEPGActivity3).create();
                        EditText editText = (EditText) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.ed_cc_url);
                        Button button3 = (Button) viewInflate.findViewById(R.id.btn_cc_cancel);
                        ((Button) viewInflate.findViewById(R.id.btn_cc_add)).setOnClickListener(new ViewOnClickListenerC0505c(playStreamEPGActivity2, editText, alertDialogCreate, 1));
                        button3.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 2));
                        alertDialogCreate.show();
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getVideoTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] videoTracks = playStreamEPGActivity2.f28911f2.getVideoTracks();
                                    final String[] strArr3 = new String[videoTracks.length];
                                    String[] strArr4 = new String[videoTracks.length];
                                    for (int i24 = 0; i24 < videoTracks.length; i24++) {
                                        MediaPlayer.TrackDescription trackDescription2 = videoTracks[i24];
                                        Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription2.name + ", id " + trackDescription2.id);
                                        strArr3[i24] = String.valueOf(trackDescription2.id);
                                        strArr4[i24] = trackDescription2.name;
                                    }
                                    AlertDialog.Builder builder2 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder2.setTitle("Choose Video Track");
                                    builder2.setSingleChoiceItems(strArr4, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i25) {
                                            int i26 = i112;
                                            String[] strArr7 = strArr3;
                                            PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                            switch (i26) {
                                                case 0:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i25]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                                default:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i25]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                            }
                                        }
                                    });
                                    builder2.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder2.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i25 = i112;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i25) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            playStreamEPGActivity2.f28862K2 = playStreamEPGActivity2.f28859J2.E();
                            if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                                playStreamEPGActivity2.f28865L2 = true;
                                e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i25 = i113;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i25) {
                                            case 0:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            case 1:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                        }
                                    }
                                }).U(playStreamEPGActivity2.f7985X.R(), null);
                                break;
                            }
                        } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                            if (playStreamEPGActivity2.f28911f2.getAudioTracksCount() == 0) {
                                playStreamEPGActivity2.F("No Audio Tracks Available.");
                            } else {
                                MediaPlayer.TrackDescription[] audioTracks = playStreamEPGActivity2.f28911f2.getAudioTracks();
                                final String[] strArr5 = new String[audioTracks.length];
                                String[] strArr6 = new String[audioTracks.length];
                                for (int i25 = 0; i25 < audioTracks.length; i25++) {
                                    MediaPlayer.TrackDescription trackDescription3 = audioTracks[i25];
                                    Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription3.name + ", id " + trackDescription3.id);
                                    strArr5[i25] = String.valueOf(trackDescription3.id);
                                    strArr6[i25] = trackDescription3.name;
                                }
                                AlertDialog.Builder builder3 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                builder3.setTitle("Choose Audio Track");
                                builder3.setSingleChoiceItems(strArr6, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i26) {
                                        int i27 = i113;
                                        String[] strArr7 = strArr5;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i27) {
                                            case 0:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i26]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i26]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                        }
                                    }
                                });
                                builder3.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                builder3.create().show();
                            }
                            break;
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 3;
                            }
                            int i26 = playStreamEPGActivity2.f28873O1;
                            if (i26 < 0 || i26 >= 5) {
                                str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                            } else {
                                if (i26 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                int i27 = playStreamEPGActivity2.f28873O1 + 1;
                                playStreamEPGActivity2.f28873O1 = i27;
                                if (i27 == 0) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(0);
                                    str3 = "FIT";
                                } else if (i27 == 1) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(1);
                                    str3 = "FIXED WIDTH";
                                } else if (i27 == 2) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(2);
                                    str3 = "FIXED HEIGHT";
                                } else if (i27 == 3) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(3);
                                    str3 = "FILL";
                                } else if (i27 == 4) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(4);
                                    str3 = "ZOOMED";
                                } else {
                                    str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                                }
                            }
                            Toast.makeText(playStreamEPGActivity2, "ZOOM: ".concat(str3), 0).show();
                            SharedPreferences.Editor editorEdit2 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit2.putString("video_resize_exo", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit2.apply();
                            editorEdit2.commit();
                        }
                        if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 4;
                            }
                            int i28 = playStreamEPGActivity2.f28873O1;
                            if (i28 >= 0 && i28 <= 5) {
                                if (i28 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                playStreamEPGActivity2.f28873O1++;
                                playStreamEPGActivity2.E(false);
                            }
                            SharedPreferences.Editor editorEdit3 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit3.putString("video_resize_vlc", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit3.apply();
                            editorEdit3.commit();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.J(15000);
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.K(15000);
                        break;
                    case 7:
                        if (playStreamEPGActivity2.f28867M1.equals("yes")) {
                            playStreamEPGActivity2.X();
                        } else {
                            playStreamEPGActivity2.O();
                            if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                                if (playStreamEPGActivity2.f28910f1.equals("paused")) {
                                    playStreamEPGActivity2.f28859J2.S(true);
                                    playStreamEPGActivity2.f28859J2.C();
                                    playStreamEPGActivity2.f28910f1 = "playing";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                } else {
                                    playStreamEPGActivity2.R();
                                    playStreamEPGActivity2.f28910f1 = "paused";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                }
                            } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && (mediaPlayer = playStreamEPGActivity2.f28911f2) != null) {
                                if (mediaPlayer.isPlaying()) {
                                    playStreamEPGActivity2.f28911f2.pause();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                } else {
                                    playStreamEPGActivity2.f28911f2.play();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                }
                            }
                            playStreamEPGActivity2.f28913g1.requestFocus();
                        }
                        break;
                    case 8:
                        if (playStreamEPGActivity2.f28926k2) {
                            playStreamEPGActivity2.f28836C0.setVisibility(8);
                            playStreamEPGActivity2.f28926k2 = false;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        } else {
                            playStreamEPGActivity2.f28836C0.setVisibility(0);
                            playStreamEPGActivity2.f28926k2 = true;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        }
                        break;
                    case 9:
                        String str10 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.finish();
                        break;
                    case 10:
                        String str11 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.G();
                        break;
                    case 11:
                        String str12 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.b0();
                        break;
                    case 12:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.a0();
                        break;
                    case 13:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.T();
                        break;
                    default:
                        String str15 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.Q();
                        break;
                }
            }
        });
        final int i24 = 5;
        this.f28916h1.setOnClickListener(new View.OnClickListener(this) { // from class: b7.Y0

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10255H;

            {
                this.f10255H = this;
            }

            /* JADX WARN: Code duplicated, block: B:65:0x0154  */
            /* JADX WARN: Type inference failed for: r0v13, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v18, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v3, types: [b7.a1] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String str3;
                MediaPlayer mediaPlayer;
                int i110 = i24;
                final int i111 = 2;
                final int i112 = 0;
                final int i113 = 1;
                final PlayStreamEPGActivity playStreamEPGActivity2 = this.f10255H;
                switch (i110) {
                    case 0:
                        String str4 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getSpuTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] spuTracks = playStreamEPGActivity2.f28911f2.getSpuTracks();
                                    String[] strArr = new String[spuTracks.length];
                                    String[] strArr2 = new String[spuTracks.length];
                                    int i114 = 0;
                                    for (int i115 = 0; i115 < spuTracks.length; i115++) {
                                        MediaPlayer.TrackDescription trackDescription = spuTracks[i115];
                                        Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - loadSpuTrack " + trackDescription.name + ", id " + trackDescription.id);
                                        int spuTrack = playStreamEPGActivity2.f28911f2.getSpuTrack();
                                        int i116 = trackDescription.id;
                                        if (spuTrack == i116) {
                                            i114 = i115;
                                        }
                                        strArr[i115] = String.valueOf(i116);
                                        strArr2[i115] = trackDescription.name;
                                    }
                                    SharedPreferences.Editor editorEdit = playStreamEPGActivity2.f28909f0.edit();
                                    AlertDialog.Builder builder = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder.setTitle("Choose Subtitle Language");
                                    builder.setSingleChoiceItems(strArr2, i114, new DialogInterfaceOnClickListenerC0510d1(playStreamEPGActivity2, strArr, editorEdit, i112));
                                    builder.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i25 = i111;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i25) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 1:
                        PlayStreamEPGActivity playStreamEPGActivity3 = playStreamEPGActivity2.f28906e0;
                        View viewInflate = LayoutInflater.from(playStreamEPGActivity3).inflate(R.layout.xciptv_dialog_select_cc_url, (ViewGroup) null);
                        AlertDialog alertDialogCreate = new AlertDialog.Builder(playStreamEPGActivity3).create();
                        EditText editText = (EditText) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.ed_cc_url);
                        Button button3 = (Button) viewInflate.findViewById(R.id.btn_cc_cancel);
                        ((Button) viewInflate.findViewById(R.id.btn_cc_add)).setOnClickListener(new ViewOnClickListenerC0505c(playStreamEPGActivity2, editText, alertDialogCreate, 1));
                        button3.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 2));
                        alertDialogCreate.show();
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getVideoTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] videoTracks = playStreamEPGActivity2.f28911f2.getVideoTracks();
                                    final String[] strArr3 = new String[videoTracks.length];
                                    String[] strArr4 = new String[videoTracks.length];
                                    for (int i25 = 0; i25 < videoTracks.length; i25++) {
                                        MediaPlayer.TrackDescription trackDescription2 = videoTracks[i25];
                                        Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription2.name + ", id " + trackDescription2.id);
                                        strArr3[i25] = String.valueOf(trackDescription2.id);
                                        strArr4[i25] = trackDescription2.name;
                                    }
                                    AlertDialog.Builder builder2 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder2.setTitle("Choose Video Track");
                                    builder2.setSingleChoiceItems(strArr4, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i26) {
                                            int i27 = i112;
                                            String[] strArr7 = strArr3;
                                            PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                            switch (i27) {
                                                case 0:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i26]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                                default:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i26]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                            }
                                        }
                                    });
                                    builder2.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder2.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i26 = i112;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i26) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            playStreamEPGActivity2.f28862K2 = playStreamEPGActivity2.f28859J2.E();
                            if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                                playStreamEPGActivity2.f28865L2 = true;
                                e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i26 = i113;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i26) {
                                            case 0:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            case 1:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                        }
                                    }
                                }).U(playStreamEPGActivity2.f7985X.R(), null);
                                break;
                            }
                        } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                            if (playStreamEPGActivity2.f28911f2.getAudioTracksCount() == 0) {
                                playStreamEPGActivity2.F("No Audio Tracks Available.");
                            } else {
                                MediaPlayer.TrackDescription[] audioTracks = playStreamEPGActivity2.f28911f2.getAudioTracks();
                                final String[] strArr5 = new String[audioTracks.length];
                                String[] strArr6 = new String[audioTracks.length];
                                for (int i26 = 0; i26 < audioTracks.length; i26++) {
                                    MediaPlayer.TrackDescription trackDescription3 = audioTracks[i26];
                                    Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription3.name + ", id " + trackDescription3.id);
                                    strArr5[i26] = String.valueOf(trackDescription3.id);
                                    strArr6[i26] = trackDescription3.name;
                                }
                                AlertDialog.Builder builder3 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                builder3.setTitle("Choose Audio Track");
                                builder3.setSingleChoiceItems(strArr6, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i27) {
                                        int i28 = i113;
                                        String[] strArr7 = strArr5;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i28) {
                                            case 0:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i27]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i27]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                        }
                                    }
                                });
                                builder3.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                builder3.create().show();
                            }
                            break;
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 3;
                            }
                            int i27 = playStreamEPGActivity2.f28873O1;
                            if (i27 < 0 || i27 >= 5) {
                                str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                            } else {
                                if (i27 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                int i28 = playStreamEPGActivity2.f28873O1 + 1;
                                playStreamEPGActivity2.f28873O1 = i28;
                                if (i28 == 0) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(0);
                                    str3 = "FIT";
                                } else if (i28 == 1) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(1);
                                    str3 = "FIXED WIDTH";
                                } else if (i28 == 2) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(2);
                                    str3 = "FIXED HEIGHT";
                                } else if (i28 == 3) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(3);
                                    str3 = "FILL";
                                } else if (i28 == 4) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(4);
                                    str3 = "ZOOMED";
                                } else {
                                    str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                                }
                            }
                            Toast.makeText(playStreamEPGActivity2, "ZOOM: ".concat(str3), 0).show();
                            SharedPreferences.Editor editorEdit2 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit2.putString("video_resize_exo", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit2.apply();
                            editorEdit2.commit();
                        }
                        if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 4;
                            }
                            int i29 = playStreamEPGActivity2.f28873O1;
                            if (i29 >= 0 && i29 <= 5) {
                                if (i29 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                playStreamEPGActivity2.f28873O1++;
                                playStreamEPGActivity2.E(false);
                            }
                            SharedPreferences.Editor editorEdit3 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit3.putString("video_resize_vlc", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit3.apply();
                            editorEdit3.commit();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.J(15000);
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.K(15000);
                        break;
                    case 7:
                        if (playStreamEPGActivity2.f28867M1.equals("yes")) {
                            playStreamEPGActivity2.X();
                        } else {
                            playStreamEPGActivity2.O();
                            if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                                if (playStreamEPGActivity2.f28910f1.equals("paused")) {
                                    playStreamEPGActivity2.f28859J2.S(true);
                                    playStreamEPGActivity2.f28859J2.C();
                                    playStreamEPGActivity2.f28910f1 = "playing";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                } else {
                                    playStreamEPGActivity2.R();
                                    playStreamEPGActivity2.f28910f1 = "paused";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                }
                            } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && (mediaPlayer = playStreamEPGActivity2.f28911f2) != null) {
                                if (mediaPlayer.isPlaying()) {
                                    playStreamEPGActivity2.f28911f2.pause();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                } else {
                                    playStreamEPGActivity2.f28911f2.play();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                }
                            }
                            playStreamEPGActivity2.f28913g1.requestFocus();
                        }
                        break;
                    case 8:
                        if (playStreamEPGActivity2.f28926k2) {
                            playStreamEPGActivity2.f28836C0.setVisibility(8);
                            playStreamEPGActivity2.f28926k2 = false;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        } else {
                            playStreamEPGActivity2.f28836C0.setVisibility(0);
                            playStreamEPGActivity2.f28926k2 = true;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        }
                        break;
                    case 9:
                        String str10 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.finish();
                        break;
                    case 10:
                        String str11 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.G();
                        break;
                    case 11:
                        String str12 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.b0();
                        break;
                    case 12:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.a0();
                        break;
                    case 13:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.T();
                        break;
                    default:
                        String str15 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.Q();
                        break;
                }
            }
        });
        final int i25 = 6;
        this.f28919i1.setOnClickListener(new View.OnClickListener(this) { // from class: b7.Y0

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10255H;

            {
                this.f10255H = this;
            }

            /* JADX WARN: Code duplicated, block: B:65:0x0154  */
            /* JADX WARN: Type inference failed for: r0v13, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v18, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v3, types: [b7.a1] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String str3;
                MediaPlayer mediaPlayer;
                int i110 = i25;
                final int i111 = 2;
                final int i112 = 0;
                final int i113 = 1;
                final PlayStreamEPGActivity playStreamEPGActivity2 = this.f10255H;
                switch (i110) {
                    case 0:
                        String str4 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getSpuTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] spuTracks = playStreamEPGActivity2.f28911f2.getSpuTracks();
                                    String[] strArr = new String[spuTracks.length];
                                    String[] strArr2 = new String[spuTracks.length];
                                    int i114 = 0;
                                    for (int i115 = 0; i115 < spuTracks.length; i115++) {
                                        MediaPlayer.TrackDescription trackDescription = spuTracks[i115];
                                        Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - loadSpuTrack " + trackDescription.name + ", id " + trackDescription.id);
                                        int spuTrack = playStreamEPGActivity2.f28911f2.getSpuTrack();
                                        int i116 = trackDescription.id;
                                        if (spuTrack == i116) {
                                            i114 = i115;
                                        }
                                        strArr[i115] = String.valueOf(i116);
                                        strArr2[i115] = trackDescription.name;
                                    }
                                    SharedPreferences.Editor editorEdit = playStreamEPGActivity2.f28909f0.edit();
                                    AlertDialog.Builder builder = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder.setTitle("Choose Subtitle Language");
                                    builder.setSingleChoiceItems(strArr2, i114, new DialogInterfaceOnClickListenerC0510d1(playStreamEPGActivity2, strArr, editorEdit, i112));
                                    builder.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i26 = i111;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i26) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 1:
                        PlayStreamEPGActivity playStreamEPGActivity3 = playStreamEPGActivity2.f28906e0;
                        View viewInflate = LayoutInflater.from(playStreamEPGActivity3).inflate(R.layout.xciptv_dialog_select_cc_url, (ViewGroup) null);
                        AlertDialog alertDialogCreate = new AlertDialog.Builder(playStreamEPGActivity3).create();
                        EditText editText = (EditText) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.ed_cc_url);
                        Button button3 = (Button) viewInflate.findViewById(R.id.btn_cc_cancel);
                        ((Button) viewInflate.findViewById(R.id.btn_cc_add)).setOnClickListener(new ViewOnClickListenerC0505c(playStreamEPGActivity2, editText, alertDialogCreate, 1));
                        button3.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 2));
                        alertDialogCreate.show();
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getVideoTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] videoTracks = playStreamEPGActivity2.f28911f2.getVideoTracks();
                                    final String[] strArr3 = new String[videoTracks.length];
                                    String[] strArr4 = new String[videoTracks.length];
                                    for (int i26 = 0; i26 < videoTracks.length; i26++) {
                                        MediaPlayer.TrackDescription trackDescription2 = videoTracks[i26];
                                        Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription2.name + ", id " + trackDescription2.id);
                                        strArr3[i26] = String.valueOf(trackDescription2.id);
                                        strArr4[i26] = trackDescription2.name;
                                    }
                                    AlertDialog.Builder builder2 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder2.setTitle("Choose Video Track");
                                    builder2.setSingleChoiceItems(strArr4, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i27) {
                                            int i28 = i112;
                                            String[] strArr7 = strArr3;
                                            PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                            switch (i28) {
                                                case 0:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i27]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                                default:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i27]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                            }
                                        }
                                    });
                                    builder2.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder2.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i27 = i112;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i27) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            playStreamEPGActivity2.f28862K2 = playStreamEPGActivity2.f28859J2.E();
                            if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                                playStreamEPGActivity2.f28865L2 = true;
                                e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i27 = i113;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i27) {
                                            case 0:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            case 1:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                        }
                                    }
                                }).U(playStreamEPGActivity2.f7985X.R(), null);
                                break;
                            }
                        } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                            if (playStreamEPGActivity2.f28911f2.getAudioTracksCount() == 0) {
                                playStreamEPGActivity2.F("No Audio Tracks Available.");
                            } else {
                                MediaPlayer.TrackDescription[] audioTracks = playStreamEPGActivity2.f28911f2.getAudioTracks();
                                final String[] strArr5 = new String[audioTracks.length];
                                String[] strArr6 = new String[audioTracks.length];
                                for (int i27 = 0; i27 < audioTracks.length; i27++) {
                                    MediaPlayer.TrackDescription trackDescription3 = audioTracks[i27];
                                    Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription3.name + ", id " + trackDescription3.id);
                                    strArr5[i27] = String.valueOf(trackDescription3.id);
                                    strArr6[i27] = trackDescription3.name;
                                }
                                AlertDialog.Builder builder3 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                builder3.setTitle("Choose Audio Track");
                                builder3.setSingleChoiceItems(strArr6, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i28) {
                                        int i29 = i113;
                                        String[] strArr7 = strArr5;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i29) {
                                            case 0:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i28]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i28]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                        }
                                    }
                                });
                                builder3.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                builder3.create().show();
                            }
                            break;
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 3;
                            }
                            int i28 = playStreamEPGActivity2.f28873O1;
                            if (i28 < 0 || i28 >= 5) {
                                str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                            } else {
                                if (i28 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                int i29 = playStreamEPGActivity2.f28873O1 + 1;
                                playStreamEPGActivity2.f28873O1 = i29;
                                if (i29 == 0) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(0);
                                    str3 = "FIT";
                                } else if (i29 == 1) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(1);
                                    str3 = "FIXED WIDTH";
                                } else if (i29 == 2) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(2);
                                    str3 = "FIXED HEIGHT";
                                } else if (i29 == 3) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(3);
                                    str3 = "FILL";
                                } else if (i29 == 4) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(4);
                                    str3 = "ZOOMED";
                                } else {
                                    str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                                }
                            }
                            Toast.makeText(playStreamEPGActivity2, "ZOOM: ".concat(str3), 0).show();
                            SharedPreferences.Editor editorEdit2 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit2.putString("video_resize_exo", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit2.apply();
                            editorEdit2.commit();
                        }
                        if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 4;
                            }
                            int i210 = playStreamEPGActivity2.f28873O1;
                            if (i210 >= 0 && i210 <= 5) {
                                if (i210 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                playStreamEPGActivity2.f28873O1++;
                                playStreamEPGActivity2.E(false);
                            }
                            SharedPreferences.Editor editorEdit3 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit3.putString("video_resize_vlc", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit3.apply();
                            editorEdit3.commit();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.J(15000);
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.K(15000);
                        break;
                    case 7:
                        if (playStreamEPGActivity2.f28867M1.equals("yes")) {
                            playStreamEPGActivity2.X();
                        } else {
                            playStreamEPGActivity2.O();
                            if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                                if (playStreamEPGActivity2.f28910f1.equals("paused")) {
                                    playStreamEPGActivity2.f28859J2.S(true);
                                    playStreamEPGActivity2.f28859J2.C();
                                    playStreamEPGActivity2.f28910f1 = "playing";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                } else {
                                    playStreamEPGActivity2.R();
                                    playStreamEPGActivity2.f28910f1 = "paused";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                }
                            } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && (mediaPlayer = playStreamEPGActivity2.f28911f2) != null) {
                                if (mediaPlayer.isPlaying()) {
                                    playStreamEPGActivity2.f28911f2.pause();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                } else {
                                    playStreamEPGActivity2.f28911f2.play();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                }
                            }
                            playStreamEPGActivity2.f28913g1.requestFocus();
                        }
                        break;
                    case 8:
                        if (playStreamEPGActivity2.f28926k2) {
                            playStreamEPGActivity2.f28836C0.setVisibility(8);
                            playStreamEPGActivity2.f28926k2 = false;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        } else {
                            playStreamEPGActivity2.f28836C0.setVisibility(0);
                            playStreamEPGActivity2.f28926k2 = true;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        }
                        break;
                    case 9:
                        String str10 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.finish();
                        break;
                    case 10:
                        String str11 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.G();
                        break;
                    case 11:
                        String str12 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.b0();
                        break;
                    case 12:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.a0();
                        break;
                    case 13:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.T();
                        break;
                    default:
                        String str15 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.Q();
                        break;
                }
            }
        });
        final int i26 = 7;
        this.f28913g1.setOnClickListener(new View.OnClickListener(this) { // from class: b7.Y0

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10255H;

            {
                this.f10255H = this;
            }

            /* JADX WARN: Code duplicated, block: B:65:0x0154  */
            /* JADX WARN: Type inference failed for: r0v13, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v18, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v3, types: [b7.a1] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String str3;
                MediaPlayer mediaPlayer;
                int i110 = i26;
                final int i111 = 2;
                final int i112 = 0;
                final int i113 = 1;
                final PlayStreamEPGActivity playStreamEPGActivity2 = this.f10255H;
                switch (i110) {
                    case 0:
                        String str4 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getSpuTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] spuTracks = playStreamEPGActivity2.f28911f2.getSpuTracks();
                                    String[] strArr = new String[spuTracks.length];
                                    String[] strArr2 = new String[spuTracks.length];
                                    int i114 = 0;
                                    for (int i115 = 0; i115 < spuTracks.length; i115++) {
                                        MediaPlayer.TrackDescription trackDescription = spuTracks[i115];
                                        Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - loadSpuTrack " + trackDescription.name + ", id " + trackDescription.id);
                                        int spuTrack = playStreamEPGActivity2.f28911f2.getSpuTrack();
                                        int i116 = trackDescription.id;
                                        if (spuTrack == i116) {
                                            i114 = i115;
                                        }
                                        strArr[i115] = String.valueOf(i116);
                                        strArr2[i115] = trackDescription.name;
                                    }
                                    SharedPreferences.Editor editorEdit = playStreamEPGActivity2.f28909f0.edit();
                                    AlertDialog.Builder builder = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder.setTitle("Choose Subtitle Language");
                                    builder.setSingleChoiceItems(strArr2, i114, new DialogInterfaceOnClickListenerC0510d1(playStreamEPGActivity2, strArr, editorEdit, i112));
                                    builder.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i27 = i111;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i27) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 1:
                        PlayStreamEPGActivity playStreamEPGActivity3 = playStreamEPGActivity2.f28906e0;
                        View viewInflate = LayoutInflater.from(playStreamEPGActivity3).inflate(R.layout.xciptv_dialog_select_cc_url, (ViewGroup) null);
                        AlertDialog alertDialogCreate = new AlertDialog.Builder(playStreamEPGActivity3).create();
                        EditText editText = (EditText) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.ed_cc_url);
                        Button button3 = (Button) viewInflate.findViewById(R.id.btn_cc_cancel);
                        ((Button) viewInflate.findViewById(R.id.btn_cc_add)).setOnClickListener(new ViewOnClickListenerC0505c(playStreamEPGActivity2, editText, alertDialogCreate, 1));
                        button3.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 2));
                        alertDialogCreate.show();
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getVideoTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] videoTracks = playStreamEPGActivity2.f28911f2.getVideoTracks();
                                    final String[] strArr3 = new String[videoTracks.length];
                                    String[] strArr4 = new String[videoTracks.length];
                                    for (int i27 = 0; i27 < videoTracks.length; i27++) {
                                        MediaPlayer.TrackDescription trackDescription2 = videoTracks[i27];
                                        Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription2.name + ", id " + trackDescription2.id);
                                        strArr3[i27] = String.valueOf(trackDescription2.id);
                                        strArr4[i27] = trackDescription2.name;
                                    }
                                    AlertDialog.Builder builder2 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder2.setTitle("Choose Video Track");
                                    builder2.setSingleChoiceItems(strArr4, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i28) {
                                            int i29 = i112;
                                            String[] strArr7 = strArr3;
                                            PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                            switch (i29) {
                                                case 0:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i28]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                                default:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i28]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                            }
                                        }
                                    });
                                    builder2.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder2.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i28 = i112;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i28) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            playStreamEPGActivity2.f28862K2 = playStreamEPGActivity2.f28859J2.E();
                            if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                                playStreamEPGActivity2.f28865L2 = true;
                                e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i28 = i113;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i28) {
                                            case 0:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            case 1:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                        }
                                    }
                                }).U(playStreamEPGActivity2.f7985X.R(), null);
                                break;
                            }
                        } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                            if (playStreamEPGActivity2.f28911f2.getAudioTracksCount() == 0) {
                                playStreamEPGActivity2.F("No Audio Tracks Available.");
                            } else {
                                MediaPlayer.TrackDescription[] audioTracks = playStreamEPGActivity2.f28911f2.getAudioTracks();
                                final String[] strArr5 = new String[audioTracks.length];
                                String[] strArr6 = new String[audioTracks.length];
                                for (int i28 = 0; i28 < audioTracks.length; i28++) {
                                    MediaPlayer.TrackDescription trackDescription3 = audioTracks[i28];
                                    Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription3.name + ", id " + trackDescription3.id);
                                    strArr5[i28] = String.valueOf(trackDescription3.id);
                                    strArr6[i28] = trackDescription3.name;
                                }
                                AlertDialog.Builder builder3 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                builder3.setTitle("Choose Audio Track");
                                builder3.setSingleChoiceItems(strArr6, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i29) {
                                        int i210 = i113;
                                        String[] strArr7 = strArr5;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i210) {
                                            case 0:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i29]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i29]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                        }
                                    }
                                });
                                builder3.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                builder3.create().show();
                            }
                            break;
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 3;
                            }
                            int i29 = playStreamEPGActivity2.f28873O1;
                            if (i29 < 0 || i29 >= 5) {
                                str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                            } else {
                                if (i29 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                int i210 = playStreamEPGActivity2.f28873O1 + 1;
                                playStreamEPGActivity2.f28873O1 = i210;
                                if (i210 == 0) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(0);
                                    str3 = "FIT";
                                } else if (i210 == 1) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(1);
                                    str3 = "FIXED WIDTH";
                                } else if (i210 == 2) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(2);
                                    str3 = "FIXED HEIGHT";
                                } else if (i210 == 3) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(3);
                                    str3 = "FILL";
                                } else if (i210 == 4) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(4);
                                    str3 = "ZOOMED";
                                } else {
                                    str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                                }
                            }
                            Toast.makeText(playStreamEPGActivity2, "ZOOM: ".concat(str3), 0).show();
                            SharedPreferences.Editor editorEdit2 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit2.putString("video_resize_exo", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit2.apply();
                            editorEdit2.commit();
                        }
                        if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 4;
                            }
                            int i211 = playStreamEPGActivity2.f28873O1;
                            if (i211 >= 0 && i211 <= 5) {
                                if (i211 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                playStreamEPGActivity2.f28873O1++;
                                playStreamEPGActivity2.E(false);
                            }
                            SharedPreferences.Editor editorEdit3 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit3.putString("video_resize_vlc", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit3.apply();
                            editorEdit3.commit();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.J(15000);
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.K(15000);
                        break;
                    case 7:
                        if (playStreamEPGActivity2.f28867M1.equals("yes")) {
                            playStreamEPGActivity2.X();
                        } else {
                            playStreamEPGActivity2.O();
                            if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                                if (playStreamEPGActivity2.f28910f1.equals("paused")) {
                                    playStreamEPGActivity2.f28859J2.S(true);
                                    playStreamEPGActivity2.f28859J2.C();
                                    playStreamEPGActivity2.f28910f1 = "playing";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                } else {
                                    playStreamEPGActivity2.R();
                                    playStreamEPGActivity2.f28910f1 = "paused";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                }
                            } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && (mediaPlayer = playStreamEPGActivity2.f28911f2) != null) {
                                if (mediaPlayer.isPlaying()) {
                                    playStreamEPGActivity2.f28911f2.pause();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                } else {
                                    playStreamEPGActivity2.f28911f2.play();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                }
                            }
                            playStreamEPGActivity2.f28913g1.requestFocus();
                        }
                        break;
                    case 8:
                        if (playStreamEPGActivity2.f28926k2) {
                            playStreamEPGActivity2.f28836C0.setVisibility(8);
                            playStreamEPGActivity2.f28926k2 = false;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        } else {
                            playStreamEPGActivity2.f28836C0.setVisibility(0);
                            playStreamEPGActivity2.f28926k2 = true;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        }
                        break;
                    case 9:
                        String str10 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.finish();
                        break;
                    case 10:
                        String str11 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.G();
                        break;
                    case 11:
                        String str12 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.b0();
                        break;
                    case 12:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.a0();
                        break;
                    case 13:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.T();
                        break;
                    default:
                        String str15 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.Q();
                        break;
                }
            }
        });
        this.f28905d2.setOnClickListener(new ViewOnClickListenerC2988c(this, 19));
        final int i27 = 8;
        this.f28937o1.setOnClickListener(new View.OnClickListener(this) { // from class: b7.Y0

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10255H;

            {
                this.f10255H = this;
            }

            /* JADX WARN: Code duplicated, block: B:65:0x0154  */
            /* JADX WARN: Type inference failed for: r0v13, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v18, types: [b7.a1] */
            /* JADX WARN: Type inference failed for: r0v3, types: [b7.a1] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String str3;
                MediaPlayer mediaPlayer;
                int i110 = i27;
                final int i111 = 2;
                final int i112 = 0;
                final int i113 = 1;
                final PlayStreamEPGActivity playStreamEPGActivity2 = this.f10255H;
                switch (i110) {
                    case 0:
                        String str4 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getSpuTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] spuTracks = playStreamEPGActivity2.f28911f2.getSpuTracks();
                                    String[] strArr = new String[spuTracks.length];
                                    String[] strArr2 = new String[spuTracks.length];
                                    int i114 = 0;
                                    for (int i115 = 0; i115 < spuTracks.length; i115++) {
                                        MediaPlayer.TrackDescription trackDescription = spuTracks[i115];
                                        Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - loadSpuTrack " + trackDescription.name + ", id " + trackDescription.id);
                                        int spuTrack = playStreamEPGActivity2.f28911f2.getSpuTrack();
                                        int i116 = trackDescription.id;
                                        if (spuTrack == i116) {
                                            i114 = i115;
                                        }
                                        strArr[i115] = String.valueOf(i116);
                                        strArr2[i115] = trackDescription.name;
                                    }
                                    SharedPreferences.Editor editorEdit = playStreamEPGActivity2.f28909f0.edit();
                                    AlertDialog.Builder builder = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder.setTitle("Choose Subtitle Language");
                                    builder.setSingleChoiceItems(strArr2, i114, new DialogInterfaceOnClickListenerC0510d1(playStreamEPGActivity2, strArr, editorEdit, i112));
                                    builder.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i28 = i111;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i28) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 1:
                        PlayStreamEPGActivity playStreamEPGActivity3 = playStreamEPGActivity2.f28906e0;
                        View viewInflate = LayoutInflater.from(playStreamEPGActivity3).inflate(R.layout.xciptv_dialog_select_cc_url, (ViewGroup) null);
                        AlertDialog alertDialogCreate = new AlertDialog.Builder(playStreamEPGActivity3).create();
                        EditText editText = (EditText) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.ed_cc_url);
                        Button button3 = (Button) viewInflate.findViewById(R.id.btn_cc_cancel);
                        ((Button) viewInflate.findViewById(R.id.btn_cc_add)).setOnClickListener(new ViewOnClickListenerC0505c(playStreamEPGActivity2, editText, alertDialogCreate, 1));
                        button3.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 2));
                        alertDialogCreate.show();
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (!z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                                if (playStreamEPGActivity2.f28911f2.getVideoTracksCount() == 0) {
                                    playStreamEPGActivity2.F("No Subtitles Available.");
                                } else {
                                    MediaPlayer.TrackDescription[] videoTracks = playStreamEPGActivity2.f28911f2.getVideoTracks();
                                    final String[] strArr3 = new String[videoTracks.length];
                                    String[] strArr4 = new String[videoTracks.length];
                                    for (int i28 = 0; i28 < videoTracks.length; i28++) {
                                        MediaPlayer.TrackDescription trackDescription2 = videoTracks[i28];
                                        Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription2.name + ", id " + trackDescription2.id);
                                        strArr3[i28] = String.valueOf(trackDescription2.id);
                                        strArr4[i28] = trackDescription2.name;
                                    }
                                    AlertDialog.Builder builder2 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                    builder2.setTitle("Choose Video Track");
                                    builder2.setSingleChoiceItems(strArr4, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i29) {
                                            int i210 = i112;
                                            String[] strArr7 = strArr3;
                                            PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                            switch (i210) {
                                                case 0:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i29]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                                default:
                                                    playStreamEPGActivity4.f28911f2.pause();
                                                    playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i29]));
                                                    playStreamEPGActivity4.f28911f2.play();
                                                    break;
                                            }
                                        }
                                    });
                                    builder2.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                    builder2.create().show();
                                }
                                break;
                            }
                        } else if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                            playStreamEPGActivity2.f28865L2 = true;
                            e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i29 = i112;
                                    PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                    switch (i29) {
                                        case 0:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        case 1:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                        default:
                                            playStreamEPGActivity4.f28865L2 = false;
                                            break;
                                    }
                                }
                            }).U(playStreamEPGActivity2.f7985X.R(), null);
                            break;
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            playStreamEPGActivity2.f28862K2 = playStreamEPGActivity2.f28859J2.E();
                            if (!playStreamEPGActivity2.f28865L2 && e7.d.X(playStreamEPGActivity2.f28859J2)) {
                                playStreamEPGActivity2.f28865L2 = true;
                                e7.d.W(playStreamEPGActivity2.f28859J2, new DialogInterface.OnDismissListener() { // from class: b7.a1
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i29 = i113;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i29) {
                                            case 0:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            case 1:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28865L2 = false;
                                                break;
                                        }
                                    }
                                }).U(playStreamEPGActivity2.f7985X.R(), null);
                                break;
                            }
                        } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && playStreamEPGActivity2.f28911f2.isPlaying()) {
                            if (playStreamEPGActivity2.f28911f2.getAudioTracksCount() == 0) {
                                playStreamEPGActivity2.F("No Audio Tracks Available.");
                            } else {
                                MediaPlayer.TrackDescription[] audioTracks = playStreamEPGActivity2.f28911f2.getAudioTracks();
                                final String[] strArr5 = new String[audioTracks.length];
                                String[] strArr6 = new String[audioTracks.length];
                                for (int i29 = 0; i29 < audioTracks.length; i29++) {
                                    MediaPlayer.TrackDescription trackDescription3 = audioTracks[i29];
                                    Log.i("XCIPTV_TAG", "loadSpuTrack " + trackDescription3.name + ", id " + trackDescription3.id);
                                    strArr5[i29] = String.valueOf(trackDescription3.id);
                                    strArr6[i29] = trackDescription3.name;
                                }
                                AlertDialog.Builder builder3 = new AlertDialog.Builder(playStreamEPGActivity2.f28906e0);
                                builder3.setTitle("Choose Audio Track");
                                builder3.setSingleChoiceItems(strArr6, 0, new DialogInterface.OnClickListener() { // from class: b7.b1
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i210) {
                                        int i211 = i113;
                                        String[] strArr7 = strArr5;
                                        PlayStreamEPGActivity playStreamEPGActivity4 = playStreamEPGActivity2;
                                        switch (i211) {
                                            case 0:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setVideoTrack(Integer.parseInt(strArr7[i210]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                            default:
                                                playStreamEPGActivity4.f28911f2.pause();
                                                playStreamEPGActivity4.f28911f2.setAudioTrack(Integer.parseInt(strArr7[i210]));
                                                playStreamEPGActivity4.f28911f2.play();
                                                break;
                                        }
                                    }
                                });
                                builder3.setNegativeButton("CLOSE", (DialogInterface.OnClickListener) null);
                                builder3.create().show();
                            }
                            break;
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 3;
                            }
                            int i210 = playStreamEPGActivity2.f28873O1;
                            if (i210 < 0 || i210 >= 5) {
                                str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                            } else {
                                if (i210 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                int i211 = playStreamEPGActivity2.f28873O1 + 1;
                                playStreamEPGActivity2.f28873O1 = i211;
                                if (i211 == 0) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(0);
                                    str3 = "FIT";
                                } else if (i211 == 1) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(1);
                                    str3 = "FIXED WIDTH";
                                } else if (i211 == 2) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(2);
                                    str3 = "FIXED HEIGHT";
                                } else if (i211 == 3) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(3);
                                    str3 = "FILL";
                                } else if (i211 == 4) {
                                    playStreamEPGActivity2.f28856I2.setResizeMode(4);
                                    str3 = "ZOOMED";
                                } else {
                                    str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                                }
                            }
                            Toast.makeText(playStreamEPGActivity2, "ZOOM: ".concat(str3), 0).show();
                            SharedPreferences.Editor editorEdit2 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit2.putString("video_resize_exo", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit2.apply();
                            editorEdit2.commit();
                        }
                        if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
                            if (playStreamEPGActivity2.f28873O1 > 4) {
                                playStreamEPGActivity2.f28873O1 = 4;
                            }
                            int i212 = playStreamEPGActivity2.f28873O1;
                            if (i212 >= 0 && i212 <= 5) {
                                if (i212 == 4) {
                                    playStreamEPGActivity2.f28873O1 = -1;
                                }
                                playStreamEPGActivity2.f28873O1++;
                                playStreamEPGActivity2.E(false);
                            }
                            SharedPreferences.Editor editorEdit3 = playStreamEPGActivity2.f28909f0.edit();
                            editorEdit3.putString("video_resize_vlc", String.valueOf(playStreamEPGActivity2.f28873O1));
                            editorEdit3.apply();
                            editorEdit3.commit();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.J(15000);
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.K(15000);
                        break;
                    case 7:
                        if (playStreamEPGActivity2.f28867M1.equals("yes")) {
                            playStreamEPGActivity2.X();
                        } else {
                            playStreamEPGActivity2.O();
                            if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                                if (playStreamEPGActivity2.f28910f1.equals("paused")) {
                                    playStreamEPGActivity2.f28859J2.S(true);
                                    playStreamEPGActivity2.f28859J2.C();
                                    playStreamEPGActivity2.f28910f1 = "playing";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                } else {
                                    playStreamEPGActivity2.R();
                                    playStreamEPGActivity2.f28910f1 = "paused";
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                }
                            } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && (mediaPlayer = playStreamEPGActivity2.f28911f2) != null) {
                                if (mediaPlayer.isPlaying()) {
                                    playStreamEPGActivity2.f28911f2.pause();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                                } else {
                                    playStreamEPGActivity2.f28911f2.play();
                                    playStreamEPGActivity2.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                                }
                            }
                            playStreamEPGActivity2.f28913g1.requestFocus();
                        }
                        break;
                    case 8:
                        if (playStreamEPGActivity2.f28926k2) {
                            playStreamEPGActivity2.f28836C0.setVisibility(8);
                            playStreamEPGActivity2.f28926k2 = false;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        } else {
                            playStreamEPGActivity2.f28836C0.setVisibility(0);
                            playStreamEPGActivity2.f28926k2 = true;
                            playStreamEPGActivity2.f28911f2.stop();
                            playStreamEPGActivity2.V();
                            playStreamEPGActivity2.D(PlayStreamEPGActivity.f28828Q2);
                        }
                        break;
                    case 9:
                        String str10 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.finish();
                        break;
                    case 10:
                        String str11 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.G();
                        break;
                    case 11:
                        String str12 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.b0();
                        break;
                    case 12:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.a0();
                        break;
                    case 13:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.T();
                        break;
                    default:
                        String str15 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.Q();
                        break;
                }
            }
        });
        final int i28 = 0;
        this.f28925k1.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: b7.Z0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10257b;

            {
                this.f10257b = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z7) {
                int i110 = i28;
                PlayStreamEPGActivity playStreamEPGActivity2 = this.f10257b;
                switch (i110) {
                    case 0:
                        String str3 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 1:
                        String str4 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 7:
                        String str10 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 8:
                        String str11 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 9:
                        String str12 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 10:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        break;
                    default:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.getClass();
                        if (!z7) {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down not focused");
                        } else {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down focused");
                        }
                        break;
                }
            }
        });
        final int i29 = 1;
        this.f28928l1.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: b7.Z0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10257b;

            {
                this.f10257b = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z7) {
                int i110 = i29;
                PlayStreamEPGActivity playStreamEPGActivity2 = this.f10257b;
                switch (i110) {
                    case 0:
                        String str3 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 1:
                        String str4 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 7:
                        String str10 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 8:
                        String str11 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 9:
                        String str12 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 10:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        break;
                    default:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.getClass();
                        if (!z7) {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down not focused");
                        } else {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down focused");
                        }
                        break;
                }
            }
        });
        final int i30 = 2;
        this.f28934n1.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: b7.Z0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10257b;

            {
                this.f10257b = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z7) {
                int i110 = i30;
                PlayStreamEPGActivity playStreamEPGActivity2 = this.f10257b;
                switch (i110) {
                    case 0:
                        String str3 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 1:
                        String str4 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 7:
                        String str10 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 8:
                        String str11 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 9:
                        String str12 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 10:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        break;
                    default:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.getClass();
                        if (!z7) {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down not focused");
                        } else {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down focused");
                        }
                        break;
                }
            }
        });
        final int i31 = 3;
        this.f28931m1.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: b7.Z0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10257b;

            {
                this.f10257b = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z7) {
                int i110 = i31;
                PlayStreamEPGActivity playStreamEPGActivity2 = this.f10257b;
                switch (i110) {
                    case 0:
                        String str3 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 1:
                        String str4 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 7:
                        String str10 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 8:
                        String str11 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 9:
                        String str12 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 10:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        break;
                    default:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.getClass();
                        if (!z7) {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down not focused");
                        } else {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down focused");
                        }
                        break;
                }
            }
        });
        final int i32 = 4;
        this.f28922j1.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: b7.Z0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10257b;

            {
                this.f10257b = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z7) {
                int i110 = i32;
                PlayStreamEPGActivity playStreamEPGActivity2 = this.f10257b;
                switch (i110) {
                    case 0:
                        String str3 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 1:
                        String str4 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 7:
                        String str10 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 8:
                        String str11 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 9:
                        String str12 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 10:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        break;
                    default:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.getClass();
                        if (!z7) {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down not focused");
                        } else {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down focused");
                        }
                        break;
                }
            }
        });
        final int i33 = 5;
        this.f28916h1.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: b7.Z0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10257b;

            {
                this.f10257b = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z7) {
                int i110 = i33;
                PlayStreamEPGActivity playStreamEPGActivity2 = this.f10257b;
                switch (i110) {
                    case 0:
                        String str3 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 1:
                        String str4 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 7:
                        String str10 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 8:
                        String str11 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 9:
                        String str12 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 10:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        break;
                    default:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.getClass();
                        if (!z7) {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down not focused");
                        } else {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down focused");
                        }
                        break;
                }
            }
        });
        this.f28919i1.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: b7.Z0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10257b;

            {
                this.f10257b = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z7) {
                int i110 = i25;
                PlayStreamEPGActivity playStreamEPGActivity2 = this.f10257b;
                switch (i110) {
                    case 0:
                        String str3 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 1:
                        String str4 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 7:
                        String str10 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 8:
                        String str11 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 9:
                        String str12 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 10:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        break;
                    default:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.getClass();
                        if (!z7) {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down not focused");
                        } else {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down focused");
                        }
                        break;
                }
            }
        });
        final int i34 = 7;
        this.f28913g1.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: b7.Z0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10257b;

            {
                this.f10257b = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z7) {
                int i110 = i34;
                PlayStreamEPGActivity playStreamEPGActivity2 = this.f10257b;
                switch (i110) {
                    case 0:
                        String str3 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 1:
                        String str4 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 7:
                        String str10 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 8:
                        String str11 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 9:
                        String str12 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 10:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        break;
                    default:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.getClass();
                        if (!z7) {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down not focused");
                        } else {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down focused");
                        }
                        break;
                }
            }
        });
        final int i35 = 8;
        this.f28905d2.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: b7.Z0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10257b;

            {
                this.f10257b = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z7) {
                int i110 = i35;
                PlayStreamEPGActivity playStreamEPGActivity2 = this.f10257b;
                switch (i110) {
                    case 0:
                        String str3 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 1:
                        String str4 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 7:
                        String str10 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 8:
                        String str11 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 9:
                        String str12 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 10:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        break;
                    default:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.getClass();
                        if (!z7) {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down not focused");
                        } else {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down focused");
                        }
                        break;
                }
            }
        });
        final int i36 = 9;
        this.f28937o1.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: b7.Z0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10257b;

            {
                this.f10257b = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z7) {
                int i110 = i36;
                PlayStreamEPGActivity playStreamEPGActivity2 = this.f10257b;
                switch (i110) {
                    case 0:
                        String str3 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 1:
                        String str4 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 7:
                        String str10 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 8:
                        String str11 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 9:
                        String str12 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 10:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        break;
                    default:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.getClass();
                        if (!z7) {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down not focused");
                        } else {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down focused");
                        }
                        break;
                }
            }
        });
        final int i37 = 10;
        this.f28961w1.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: b7.Z0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PlayStreamEPGActivity f10257b;

            {
                this.f10257b = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z7) {
                int i110 = i37;
                PlayStreamEPGActivity playStreamEPGActivity2 = this.f10257b;
                switch (i110) {
                    case 0:
                        String str3 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 1:
                        String str4 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 2:
                        String str5 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 3:
                        String str6 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 4:
                        String str7 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 5:
                        String str8 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 6:
                        String str9 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 7:
                        String str10 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 8:
                        String str11 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 9:
                        String str12 = PlayStreamEPGActivity.THEME;
                        if (!z7) {
                            playStreamEPGActivity2.getClass();
                        } else {
                            playStreamEPGActivity2.O();
                        }
                        break;
                    case 10:
                        String str13 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.O();
                        break;
                    default:
                        String str14 = PlayStreamEPGActivity.THEME;
                        playStreamEPGActivity2.getClass();
                        if (!z7) {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down not focused");
                        } else {
                            Log.e("XCIPTV_TAG", "btn_cat_up_down focused");
                        }
                        break;
                }
            }
        });
        this.f28961w1.setOnSeekBarChangeListener(new C0519g1(this, 0));
        this.f28902c1.setFocusable(true);
        this.f28902c1.setOnSeekBarChangeListener(new C0519g1(this, 1));
        this.f28904d1.setOnSeekBarChangeListener(new C0519g1(this, 2));
        if (this.f28909f0.contains("agent")) {
            if (this.f28909f0.getString("agent", null).equals("http")) {
                this.f28932m2 = System.getProperty("http.agent");
            } else {
                this.f28932m2 = this.f28909f0.getString("agent", null);
            }
        }
        this.f28932m2 = "VLC/3.0.21 LibVLC/3.0.21";
        f28829R2 = e7.a.f(playStreamEPGActivity, f28829R2, "VLC/3.0.21 LibVLC/3.0.21");
        this.f28862K2 = new k0(new j0());
        String strC3 = q0.q().c("ORT_WHICH_PLAYER", "EXO");
        strC3.getClass();
        if (strC3.equals("EXO")) {
            v(f28828Q2);
        } else if (strC3.equals("VLC")) {
            D(f28828Q2);
        }
        Handler handler = this.f28886U0;
        if (handler != null) {
            handler.removeCallbacks(this.f28894Y0);
        }
        Handler handler2 = new Handler(Looper.getMainLooper());
        this.f28886U0 = handler2;
        W0 w7 = new W0(this, i25);
        this.f28894Y0 = w7;
        handler2.postDelayed(w7, Integer.parseInt(this.f28927l0) * 60000);
    }

    @Override // p039f.AbstractActivityC3000o, Y.AbstractActivityC0409v, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        q0.q().e("ORT_isPlayStreamEPGActivityVisible", false);
        q0.q().e("ORT_isUpdateUserInfoRequired", true);
        q0.q().g("ORT_USER_ONLINE_STATUS", "no");
        Log.v("XCIPTV_TAG", "onDestroy()...");
        V();
        W();
        MediaPlayer mediaPlayer = this.f28911f2;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
        setRequestedOrientation(4);
        if (q0.q().c("ORT_WHICH_CAT", "TV").equals("TV")) {
            CategoriesActivity.f28377I0 = true;
            SharedPreferences.Editor editorEdit = this.f28909f0.edit();
            editorEdit.putString("last_profile", q0.q().c("ORT_PROFILE", "Default (XC)"));
            editorEdit.putString("last_channel_name", this.f28915h0);
            editorEdit.apply();
            editorEdit.commit();
        }
        G g8 = this.f28877P2;
        if (g8.isOrderedBroadcast()) {
            p064i0.c.a(this).d(g8);
        }
        Handler handler = this.f28917h2;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyLongPress(int i8, KeyEvent keyEvent) {
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i8, KeyEvent keyEvent) {
        Log.i("XCIPTV_TAG", "Keycode: " + i8);
        if (i8 == 4) {
            this.f28857J0.setVisibility(8);
            if (!q0.q().c("ORT_LIVE_TV_EPG_MODE", "yes").equals("yes")) {
                if (U2.z("ORT_WHICH_CAT", "TV", "TV") || U2.z("ORT_WHICH_CAT", "TV", "FAV")) {
                    if (!this.f28921j0.equals("0")) {
                        Z();
                        return true;
                    }
                    W();
                    V();
                    finish();
                    return true;
                }
                if (this.f28940p1.isShown()) {
                    this.f28940p1.setVisibility(8);
                    return true;
                }
                if (this.f28923j2.equals("no")) {
                    u();
                }
                W();
                V();
                finish();
                return true;
            }
            if (this.f28940p1.isShown()) {
                this.f28940p1.setVisibility(8);
                return true;
            }
            if (!U2.z("ORT_WHICH_CAT", "TV", "TV") && !U2.z("ORT_WHICH_CAT", "TV", "FAV")) {
                if (this.f28923j2.equals("no")) {
                    u();
                }
                W();
                V();
                finish();
                return true;
            }
            if (this.f28921j0.equals("0")) {
                this.f28940p1.setVisibility(8);
                Z();
                return true;
            }
            W();
            V();
            finish();
            return true;
        }
        if (i8 == 85) {
            Log.d("XCIPTV_TAG", "Play Command Receive from remote!");
            if (this.f28867M1.equals("yes")) {
                X();
                return true;
            }
            if (U2.z("ORT_WHICH_PLAYER", "EXO", "EXO")) {
                if (!this.f28910f1.equals("paused")) {
                    B();
                    R();
                    this.f28910f1 = "paused";
                    this.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                    return true;
                }
                this.f28859J2.S(true);
                this.f28859J2.C();
                this.f28910f1 = "playing";
                this.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                O();
                return true;
            }
            if (!U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
                return true;
            }
            if (!this.f28911f2.isPlaying()) {
                O();
                this.f28911f2.play();
                this.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                return true;
            }
            B();
            this.f28911f2.pause();
            this.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
            this.f28913g1.requestFocus();
            return true;
        }
        if (i8 == 86) {
            Log.d("XCIPTV_TAG", "Play Command Receive from remote!");
            if (this.f28867M1.equals("yes")) {
                X();
                return true;
            }
            if (!U2.z("ORT_WHICH_PLAYER", "EXO", "EXO")) {
                if (!U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
                    return true;
                }
                if (this.f28911f2.isPlaying()) {
                    this.f28911f2.pause();
                    this.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
                    this.f28913g1.requestFocus();
                    return true;
                }
                this.f28911f2.play();
                this.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                O();
                return true;
            }
            if (this.f28910f1.equals("paused")) {
                this.f28859J2.S(true);
                this.f28859J2.C();
                this.f28910f1 = "playing";
                this.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
                O();
                return true;
            }
            B();
            R();
            this.f28910f1 = "paused";
            this.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
            this.f28913g1.requestFocus();
            return true;
        }
        if (i8 == 89) {
            K(15000);
            return true;
        }
        if (i8 == 90) {
            J(15000);
            return true;
        }
        switch (i8) {
            case 19:
                if (U2.z("ORT_WHICH_CAT", "TV", "TV") || U2.z("ORT_WHICH_CAT", "TV", "FAV")) {
                    b0();
                    return true;
                }
                if (!U2.z("ORT_WHICH_CAT", "TV", "VOD") && !U2.z("ORT_WHICH_CAT", "TV", "SERIES")) {
                    return true;
                }
                if (U2.z("ORT_WHICH_PLAYER", "EXO", "EXO")) {
                    if (this.f28962w2 || this.f28959v2) {
                        return true;
                    }
                    O o4 = this.f28859J2;
                    o4.c0();
                    float f8 = o4.f762E0;
                    this.f28852H1 = f8;
                    this.f28904d1.setProgress((int) (f8 * 100.0f));
                    this.f28854I0.setVisibility(0);
                    if (this.f28852H1 >= 1.0f) {
                        return true;
                    }
                    w();
                    float f9 = this.f28852H1 + 0.1f;
                    this.f28852H1 = f9;
                    this.f28859J2.W(f9);
                    this.f28904d1.setProgress((int) (this.f28852H1 * 100.0f));
                    this.f28912g0.putString("last_volume", String.valueOf((int) (this.f28852H1 * 100.0f)));
                    this.f28912g0.commit();
                    return true;
                }
                if (!U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") || Methods.P() || this.f28962w2 || this.f28959v2) {
                    return true;
                }
                float volume = this.f28911f2.getVolume();
                this.f28852H1 = volume;
                this.f28904d1.setProgress((int) volume);
                this.f28854I0.setVisibility(0);
                if (this.f28852H1 >= 100.0f) {
                    return true;
                }
                w();
                float f10 = this.f28852H1 + 10.0f;
                this.f28852H1 = f10;
                this.f28911f2.setVolume((int) f10);
                this.f28904d1.setProgress((int) this.f28852H1);
                this.f28912g0.putString("last_volume_vlc", String.valueOf((int) this.f28852H1));
                this.f28912g0.commit();
                return true;
            case 20:
                if (U2.z("ORT_WHICH_CAT", "TV", "TV") || U2.z("ORT_WHICH_CAT", "TV", "FAV")) {
                    a0();
                    return true;
                }
                if (!U2.z("ORT_WHICH_CAT", "TV", "VOD") && !U2.z("ORT_WHICH_CAT", "TV", "SERIES")) {
                    return true;
                }
                if (U2.z("ORT_WHICH_PLAYER", "EXO", "EXO")) {
                    if (this.f28962w2 || this.f28959v2) {
                        return true;
                    }
                    O o7 = this.f28859J2;
                    o7.c0();
                    float f11 = o7.f762E0;
                    this.f28852H1 = f11;
                    this.f28904d1.setProgress((int) (f11 * 100.0f));
                    this.f28854I0.setVisibility(0);
                    if (this.f28852H1 <= 0.0f) {
                        return true;
                    }
                    w();
                    float f12 = this.f28852H1 - 0.1f;
                    this.f28852H1 = f12;
                    this.f28859J2.W(f12);
                    this.f28904d1.setProgress((int) (this.f28852H1 * 100.0f));
                    this.f28912g0.putString("last_volume", String.valueOf((int) (this.f28852H1 * 100.0f)));
                    this.f28912g0.commit();
                    return true;
                }
                if (!U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") || Methods.P() || this.f28962w2 || this.f28959v2) {
                    return true;
                }
                float volume2 = this.f28911f2.getVolume();
                this.f28852H1 = volume2;
                this.f28904d1.setProgress((int) volume2);
                this.f28854I0.setVisibility(0);
                if (this.f28852H1 <= 0.0f) {
                    return true;
                }
                w();
                float f13 = this.f28852H1 - 10.0f;
                this.f28852H1 = f13;
                this.f28911f2.setVolume((int) f13);
                this.f28904d1.setProgress((int) this.f28852H1);
                this.f28912g0.putString("last_volume_vlc", String.valueOf((int) this.f28852H1));
                this.f28912g0.commit();
                return true;
            case 21:
                Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - KEYCODE_DPAD_LEFT");
                if (this.f28921j0.equals("1")) {
                    T();
                } else if (!this.f28940p1.isShown()) {
                    if (U2.z("ORT_WHICH_CAT", "TV", "VOD") || U2.z("ORT_WHICH_CAT", "TV", "SERIES")) {
                        this.f28850G2.setVisibility(0);
                        K(10000);
                        new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0513e1(this, 1), 2000L);
                        return true;
                    }
                    if (U2.z("ORT_WHICH_PLAYER", "EXO", "EXO")) {
                        if (!this.f28962w2 && !this.f28959v2 && (U2.z("ORT_WHICH_CAT", "TV", "TV") || U2.z("ORT_WHICH_CAT", "TV", "FAV"))) {
                            O o8 = this.f28859J2;
                            o8.c0();
                            float f14 = o8.f762E0;
                            this.f28852H1 = f14;
                            this.f28902c1.setProgress((int) (f14 * 100.0f));
                            this.f28851H0.setVisibility(0);
                            if (this.f28852H1 > 0.0f) {
                                w();
                                float f15 = this.f28852H1 - 0.1f;
                                this.f28852H1 = f15;
                                this.f28859J2.W(f15);
                                this.f28902c1.setProgress((int) (this.f28852H1 * 100.0f));
                                this.f28912g0.putString("last_volume", String.valueOf((int) (this.f28852H1 * 100.0f)));
                                this.f28912g0.commit();
                            }
                        }
                    } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && !Methods.P() && !this.f28962w2 && !this.f28959v2 && (U2.z("ORT_WHICH_CAT", "TV", "TV") || U2.z("ORT_WHICH_CAT", "TV", "FAV"))) {
                        float volume3 = this.f28911f2.getVolume();
                        this.f28852H1 = volume3;
                        this.f28902c1.setProgress((int) volume3);
                        this.f28851H0.setVisibility(0);
                        if (this.f28852H1 > 0.0f) {
                            w();
                            float f16 = this.f28852H1 - 10.0f;
                            this.f28852H1 = f16;
                            this.f28911f2.setVolume((int) f16);
                            this.f28902c1.setProgress((int) this.f28852H1);
                            this.f28912g0.putString("last_volume_vlc", String.valueOf((int) this.f28852H1));
                            this.f28912g0.commit();
                        }
                    }
                }
                return true;
            case 22:
                Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - KEYCODE_DPAD_RIGHT");
                if (this.f28921j0.equals("1")) {
                    Q();
                    return true;
                }
                if (this.f28940p1.isShown()) {
                    return true;
                }
                if (U2.z("ORT_WHICH_CAT", "TV", "VOD") || U2.z("ORT_WHICH_CAT", "TV", "SERIES")) {
                    this.f28853H2.setVisibility(0);
                    J(10000);
                    new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0513e1(this, 2), 2000L);
                    return true;
                }
                if (U2.z("ORT_WHICH_PLAYER", "EXO", "EXO")) {
                    if (this.f28962w2 || this.f28959v2) {
                        return true;
                    }
                    if (!U2.z("ORT_WHICH_CAT", "TV", "TV") && !U2.z("ORT_WHICH_CAT", "TV", "FAV")) {
                        return true;
                    }
                    O o9 = this.f28859J2;
                    o9.c0();
                    float f17 = o9.f762E0;
                    this.f28852H1 = f17;
                    this.f28902c1.setProgress((int) (f17 * 100.0f));
                    this.f28851H0.setVisibility(0);
                    if (this.f28852H1 < 1.0f) {
                        w();
                        float f18 = this.f28852H1 + 0.1f;
                        this.f28852H1 = f18;
                        this.f28859J2.W(f18);
                        this.f28902c1.setProgress((int) (this.f28852H1 * 100.0f));
                        this.f28912g0.putString("last_volume", String.valueOf((int) (this.f28852H1 * 100.0f)));
                        this.f28912g0.commit();
                    }
                    Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - " + this.f28852H1);
                    return true;
                }
                if (!U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") || Methods.P() || this.f28962w2 || this.f28959v2) {
                    return true;
                }
                if (!U2.z("ORT_WHICH_CAT", "TV", "TV") && !U2.z("ORT_WHICH_CAT", "TV", "FAV")) {
                    return true;
                }
                this.f28852H1 = this.f28911f2.getVolume();
                Log.d("XCIPTV_TAG", "VLC current volume ----------------------------" + String.valueOf(this.f28852H1));
                this.f28902c1.setProgress((int) this.f28852H1);
                this.f28851H0.setVisibility(0);
                if (this.f28852H1 >= 100.0f) {
                    return true;
                }
                w();
                float f19 = this.f28852H1 + 0.1f;
                this.f28852H1 = f19;
                this.f28911f2.setVolume(((int) f19) * 100);
                this.f28902c1.setProgress(((int) this.f28852H1) * 100);
                this.f28912g0.putString("last_volume_vlc", String.valueOf((int) this.f28852H1));
                this.f28912g0.commit();
                return true;
            case 23:
                if (!U2.z("ORT_LIVE_TV_EPG_MODE", "yes", "yes")) {
                    Z();
                    return true;
                }
                if (this.f28921j0.equals("1")) {
                    return true;
                }
                B();
                return true;
            default:
                return super.onKeyUp(i8, keyEvent);
        }
    }

    @Override // p000a.m, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        V();
        setIntent(intent);
    }

    @Override // Y.AbstractActivityC0409v, android.app.Activity
    public final void onPause() {
        q0.q().e("ORT_isPlayStreamEPGActivityVisible", false);
        Log.v("XCIPTV_TAG", "onPause()...");
        super.onPause();
    }

    @Override // Y.AbstractActivityC0409v, android.app.Activity
    public final void onResume() {
        super.onResume();
        q0.q().e("ORT_isPlayStreamEPGActivityVisible", true);
        if (!q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
            q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("VLC");
        }
        this.f28913g1.setBackgroundResource(R.drawable.btn_player_pause);
        G g8 = this.f28877P2;
        if (!g8.isOrderedBroadcast()) {
            p064i0.c.a(this).b(g8, new IntentFilter("PlayStreamEPGActivityProgramAndMessageReceiver"));
        }
        q0.q().e("ORT_isUpdateUserInfoRequired", true);
        q0.q().g("ORT_USER_ONLINE_STATUS", "yes");
    }

    @Override // p039f.AbstractActivityC3000o, Y.AbstractActivityC0409v, android.app.Activity
    public final void onStart() {
        super.onStart();
        q0.q().e("ORT_isPlayStreamEPGActivityVisible", true);
        Log.v("XCIPTV_TAG", "onStart()...");
    }

    @Override // p039f.AbstractActivityC3000o, Y.AbstractActivityC0409v, android.app.Activity
    public final void onStop() {
        super.onStop();
        q0.q().e("ORT_isPlayStreamEPGActivityVisible", false);
        Log.v("XCIPTV_TAG", "onStop()...");
        this.f28913g1.setBackgroundResource(R.drawable.btn_player_play);
        Log.v("XCIPTV_TAG", "onDestroy()...");
        W0 w7 = this.f28888V0;
        if (w7 != null) {
            this.f28880R0.removeCallbacks(w7);
        }
        Handler handler = this.f28886U0;
        if (handler != null) {
            handler.removeCallbacks(this.f28894Y0);
        }
        V();
        W();
        finish();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z7) {
        super.onWindowFocusChanged(z7);
        if (z7) {
            if (Methods.P() && Methods.T(this.f28906e0)) {
                return;
            }
            if (Build.VERSION.SDK_INT < 30) {
                getWindow().getDecorView().setSystemUiVisibility(4098);
                getWindow().getDecorView().setSystemUiVisibility(3846);
                return;
            }
            getWindow().setDecorFitsSystemWindows(false);
            if (getWindow().getInsetsController() != null) {
                getWindow().getInsetsController().hide(WindowInsets.Type.statusBars() | WindowInsets.Type.navigationBars());
                getWindow().getInsetsController().setSystemBarsBehavior(2);
            }
        }
    }

    public final void u() {
        MediaPlayer mediaPlayer;
        StringBuilder sb = new StringBuilder();
        U2.x("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET, sb, "-");
        sb.append(this.f28924k0);
        String string = sb.toString();
        if (!U2.z("ORT_WHICH_PLAYER", "EXO", "EXO")) {
            if (!U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") || (mediaPlayer = this.f28911f2) == null) {
                return;
            }
            try {
                String strValueOf = String.valueOf(mediaPlayer.getTime());
                if (this.f28911f2.getTime() <= 15000 || this.f28911f2.getTime() >= this.f28911f2.getLength() - 119000) {
                    if (this.f28911f2.getTime() > this.f28911f2.getLength() - 120000) {
                        this.f28863L0.C0(string);
                        if (q0.q().c("ORT_WHICH_CAT", "TV").equals("SERIES")) {
                            this.f28866M0.E(string);
                        }
                    } else {
                        this.f28863L0.C0(string);
                    }
                } else if (q0.q().c("ORT_WHICH_CAT", "TV").equals("SERIES")) {
                    this.f28863L0.z0(q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET) + "-" + SeriesActivity.f29086G0, string, strValueOf);
                } else {
                    this.f28863L0.z0(this.f28915h0, string, strValueOf);
                }
                return;
            } catch (Exception unused) {
                Log.d("XCIPTV_TAG", "-----------Add Resume Exception");
                return;
            }
        }
        O o4 = this.f28859J2;
        if (o4 != null) {
            String strValueOf2 = String.valueOf(o4.v());
            if (Integer.parseInt(strValueOf2) <= 15000 || this.f28859J2.v() >= this.f28859J2.A() - 119000) {
                if (this.f28859J2.v() <= this.f28859J2.A() - 120000) {
                    this.f28863L0.C0(string);
                    return;
                }
                this.f28863L0.C0(string);
                if (q0.q().c("ORT_WHICH_CAT", "TV").equals("SERIES")) {
                    this.f28866M0.E(string);
                    return;
                }
                return;
            }
            if (!U2.z("ORT_WHICH_CAT", "TV", "SERIES")) {
                this.f28863L0.z0(this.f28915h0, string, strValueOf2);
                return;
            }
            c7.d dVar = this.f28863L0;
            StringBuilder sb2 = new StringBuilder();
            U2.x("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET, sb2, "-");
            sb2.append(SeriesActivity.f29086G0);
            dVar.z0(sb2.toString(), string, strValueOf2);
        }
    }

    public final void v(String str) {
        Intent intent = getIntent();
        V();
        S0.d dVar = new S0.d();
        int i8 = this.f28876P1;
        int i9 = this.f28879Q1;
        int i10 = this.f28881R1;
        int i11 = this.f28883S1;
        C0061m.a(i10, 0, "bufferForPlaybackMs", "0");
        C0061m.a(i11, 0, "bufferForPlaybackAfterRebufferMs", "0");
        C0061m.a(i8, i10, "minBufferMs", "bufferForPlaybackMs");
        C0061m.a(i8, i11, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        C0061m.a(i9, i8, "maxBufferMs", "minBufferMs");
        C0061m c0061m = new C0061m(dVar, i8, i9, i10, i11, -1, true);
        PlayStreamEPGActivity playStreamEPGActivity = this.f28906e0;
        C0075z c0075z = new C0075z(playStreamEPGActivity);
        C0288l c0288lA = e7.a.a(playStreamEPGActivity, f28829R2, this.f28932m2);
        H1.i(!c0075z.f1149w);
        c0075z.f1130d = new C0073x(c0288lA, 1);
        intent.getBooleanExtra("prefer_extension_decoders", true);
        C0066p c0066p = new C0066p(playStreamEPGActivity.getApplicationContext());
        c0066p.f1052c = 2;
        H1.i(!c0075z.f1149w);
        c0075z.f1129c = new C0073x(c0066p, 2);
        H1.i(!c0075z.f1149w);
        c0075z.f1132f = new C0073x(c0061m, 0);
        O oA = c0075z.a();
        this.f28859J2 = oA;
        oA.U(this.f28862K2);
        O o4 = this.f28859J2;
        C0535m c0535m = new C0535m(this);
        o4.getClass();
        o4.f785S.a(c0535m);
        O o7 = this.f28859J2;
        C3121d c3121d = C3121d.f26823b;
        o7.P();
        float f8 = 0.9f;
        int i12 = 90;
        if (this.f28909f0.contains("last_volume")) {
            String string = this.f28909f0.getString("last_volume", null);
            if (this.f28909f0.getString("last_volume", null) != null) {
                try {
                    i12 = Integer.parseInt(string);
                    f8 = i12 / 100.0f;
                } catch (Exception unused) {
                }
            }
        }
        this.f28856I2.setPlayer(this.f28859J2);
        this.f28856I2.setResizeMode(this.f28873O1);
        this.f28859J2.W(f8);
        if (q0.q().c("ORT_WHICH_CAT", "TV").equals("TV") || U2.z("ORT_WHICH_CAT", "TV", "FAV")) {
            this.f28859J2.T(2);
        }
        this.f28902c1.setProgress(i12);
        this.f28929l2 = HttpUrl.FRAGMENT_ENCODE_SET;
        if (!this.f28924k0.equals(this.f28965x2)) {
            this.f28965x2 = this.f28924k0;
            if (U2.z("ORT_WHICH_CAT", "TV", "VOD")) {
                this.f28952t1.setText(this.f28849G1);
            }
            if (U2.z("ORT_WHICH_CAT", "TV", "SERIES")) {
                this.f28952t1.setText(this.f28849G1);
                this.f28949s1.setText(this.f28915h0);
            }
        }
        this.f28859J2.S(true);
        this.f28859J2.Q(H(Uri.parse(str)));
        this.f28859J2.K();
        String strC = q0.q().c("ORT_WHICH_CAT", "TV");
        strC.getClass();
        int iHashCode = strC.hashCode();
        byte b8 = -1;
        if (iHashCode != -1852509577) {
            if (iHashCode != 2690) {
                if (iHashCode != 69371) {
                    if (iHashCode == 85163 && strC.equals("VOD")) {
                        b8 = 3;
                    }
                } else if (strC.equals("FAV")) {
                    b8 = 2;
                }
            } else if (strC.equals("TV")) {
                b8 = 1;
            }
        } else if (strC.equals("SERIES")) {
            b8 = 0;
        }
        if (b8 == 0) {
            this.f28952t1.setText(this.f28849G1);
            c7.d dVar2 = this.f28863L0;
            StringBuilder sb = new StringBuilder();
            U2.x("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET, sb, "-");
            sb.append(this.f28924k0);
            int iA0 = dVar2.A0(sb.toString());
            this.f28870N1 = iA0;
            if (iA0 <= 0) {
                z();
            } else if (this.f28899a2.equals("no")) {
                this.f28859J2.h();
                O o8 = this.f28859J2;
                o8.getClass();
                o8.S(false);
                c7.d dVar3 = this.f28863L0;
                StringBuilder sb2 = new StringBuilder();
                U2.x("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET, sb2, "-");
                sb2.append(this.f28924k0);
                dVar3.C0(sb2.toString());
                Y();
            } else {
                this.f28899a2 = "no";
                z();
            }
            A();
            return;
        }
        if (b8 == 1 || b8 == 2) {
            this.f28859J2.j(5, 0L);
            this.f28859J2.h();
            I();
            return;
        }
        if (b8 != 3) {
            return;
        }
        this.f28952t1.setText(this.f28849G1);
        if (this.f28923j2.equals("no")) {
            c7.d dVar4 = this.f28863L0;
            StringBuilder sb3 = new StringBuilder();
            U2.x("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET, sb3, "-");
            sb3.append(this.f28924k0);
            int iA1 = dVar4.A0(sb3.toString());
            this.f28870N1 = iA1;
            if (iA1 <= 0) {
                z();
            } else if (this.f28899a2.equals("no")) {
                this.f28859J2.h();
                O o9 = this.f28859J2;
                o9.getClass();
                o9.S(false);
                c7.d dVar5 = this.f28863L0;
                StringBuilder sb4 = new StringBuilder();
                U2.x("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET, sb4, "-");
                sb4.append(this.f28924k0);
                dVar5.C0(sb4.toString());
                Y();
            } else {
                this.f28899a2 = "no";
                z();
            }
        } else {
            z();
        }
        A();
    }

    public final void w() {
        W0 w7 = this.f28840D1;
        if (w7 != null) {
            this.f28831A1.removeCallbacks(w7);
            this.f28831A1.removeCallbacks(null);
        }
        Handler handler = new Handler(Looper.getMainLooper());
        this.f28831A1 = handler;
        W0 w8 = new W0(this, 1);
        this.f28840D1 = w8;
        handler.postDelayed(w8, 4000L);
    }

    public final void x() {
        this.f28961w1.setVisibility(8);
        this.f28946r1.setVisibility(8);
        this.f28943q1.setVisibility(8);
        this.f28913g1.setVisibility(4);
        this.f28916h1.setVisibility(4);
        this.f28919i1.setVisibility(4);
    }

    public final void y() {
        this.f28961w1.setVisibility(0);
        this.f28946r1.setVisibility(0);
        this.f28943q1.setVisibility(0);
        this.f28913g1.setVisibility(0);
        this.f28916h1.setVisibility(0);
        this.f28919i1.setVisibility(0);
    }

    public final void z() {
        if (U2.z("ORT_WHICH_PLAYER", "EXO", "EXO")) {
            this.f28859J2.h();
            I();
            return;
        }
        if (U2.z("ORT_WHICH_PLAYER", "VLC", "VLC")) {
            this.f28911f2.play();
            if (this.f28923j2.equals("no") && this.f28909f0.contains("video_subtiltes_vlc") && this.f28909f0.getString("video_subtiltes_vlc", null).equals("no")) {
                Handler handler = new Handler();
                this.f28917h2 = handler;
                handler.postDelayed(new RunnableC0513e1(this, 4), 10000L);
                this.f28917h2.postDelayed(new RunnableC0513e1(this, 0), 11000L);
            }
        }
    }
}
