package pe.hf.black20;

import B0.C0066p;
import B0.C0073x;
import B0.C0075z;
import B0.O;
import G0.j;
import H0.d;
import O0.AbstractC0277a;
import O0.C0288l;
import O0.N;
import U4.b;
import W0.p;
import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.SurfaceView;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.leanback.widget.C;
import androidx.media3.exoplayer.dash.DashMediaSource$Factory;
import androidx.media3.exoplayer.hls.HlsMediaSource$Factory;
import androidx.media3.ui.PlayerView;
import b7.C0523i;
import b7.C0529k;
import b7.C0532l;
import b7.C0535m;
import b7.RunnableC0526j;
import b7.ViewOnClickListenerC0520h;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import h7.i;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.videolan.libvlc.LibVLC;
import org.videolan.libvlc.Media;
import org.videolan.libvlc.MediaPlayer;
import org.videolan.libvlc.interfaces.IVLCVout;
import org.videolan.libvlc.util.HWDecoderUtil;
import p000a.r;
import p086l.L0;
import p094m0.C3121d;
import p094m0.I;
import p094m0.j0;
import p094m0.k0;
import p117p0.M;
import p141s0.InterfaceC3183h;
import p148t.a;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class CatchupPlayerActivity extends Activity implements View.OnClickListener {

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public static InterfaceC3183h f28325E0;

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public k0 f28326A0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public SharedPreferences f28331H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public SharedPreferences.Editor f28332I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public String f28333J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public String f28334K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public String f28335L;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public String f28337N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public ProgressBar f28338O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public FrameLayout f28339P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public FrameLayout f28340Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public FrameLayout f28341R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public FrameLayout f28342S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public TextView f28343T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public TextView f28344U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public TextView f28345V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public SimpleDateFormat f28346W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public ImageButton f28347X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public ImageButton f28348Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public ImageButton f28349Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public SeekBar f28350a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public SeekBar f28351b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public Handler f28352c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public C f28353d0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public float f28360k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public GestureDetector f28361l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public Handler f28362m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public Handler f28363n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public RunnableC0526j f28364o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public RunnableC0526j f28365p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public i f28366q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public SurfaceView f28367r0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public IVLCVout f28370u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public Media f28371v0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public PlayerView f28374y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public O f28375z0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final CatchupPlayerActivity f28330G = this;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public String f28336M = "60";

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final int f28354e0 = 1;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f28355f0 = 3600;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final int f28356g0 = 1;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f28357h0 = 1;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public int f28358i0 = 0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public String f28359j0 = "stopped";

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public LibVLC f28368s0 = null;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public MediaPlayer f28369t0 = null;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public int f28372w0 = 0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public String f28373x0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public String f28327B0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public final boolean f28328C0 = true;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public final L0 f28329D0 = new L0(this, 3);

    static {
        System.loadLibrary("native-lib");
    }

    public final void a() {
        RunnableC0526j runnableC0526j = this.f28365p0;
        if (runnableC0526j != null) {
            this.f28363n0.removeCallbacks(runnableC0526j);
        }
        Handler handler = new Handler();
        this.f28363n0 = handler;
        RunnableC0526j runnableC0526j2 = new RunnableC0526j(this, 1);
        this.f28365p0 = runnableC0526j2;
        handler.postDelayed(runnableC0526j2, 6000L);
    }

    public final void b(String str) {
        this.f28334K = str.replaceAll(" ", HttpUrl.FRAGMENT_ENCODE_SET);
        e();
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
        arrayList.add("--live-caching=300");
        arrayList.add("--network-caching=1000");
        this.f28368s0 = new LibVLC(this.f28330G, arrayList);
        this.f28367r0.getHolder().setKeepScreenOn(true);
        this.f28369t0 = new MediaPlayer(this.f28368s0);
        Media media = new Media(this.f28368s0, Uri.parse(this.f28334K));
        this.f28371v0 = media;
        media.addOption(":network-caching=300");
        this.f28371v0.addOption(":network-caching=300");
        this.f28371v0.addOption(":http-user-agent=" + this.f28373x0);
        this.f28369t0.setMedia(this.f28371v0);
        this.f28369t0.getVLCVout().setWindowSize(CategoriesActivity.f28381M0, CategoriesActivity.f28380L0);
        this.f28369t0.setAspectRatio(this.f28331H.getString("video_resize_vlc", null));
        this.f28369t0.setScale(0.0f);
        int i8 = this.f28372w0;
        if (i8 == 0) {
            this.f28369t0.setAspectRatio(null);
            this.f28369t0.setScale(0.0f);
        } else if (i8 == 1) {
            this.f28369t0.setAspectRatio("16:9");
            this.f28369t0.setScale(0.0f);
        } else if (i8 == 2) {
            this.f28369t0.setAspectRatio("4:3");
            this.f28369t0.setScale(0.0f);
        } else if (i8 == 3) {
            this.f28369t0.setAspectRatio(null);
            this.f28369t0.setScale(1.0f);
        } else if (i8 == 4) {
            this.f28369t0.setAspectRatio(CategoriesActivity.f28381M0 + ":" + CategoriesActivity.f28380L0);
        }
        IVLCVout vLCVout = this.f28369t0.getVLCVout();
        this.f28370u0 = vLCVout;
        vLCVout.setVideoView(this.f28367r0);
        this.f28370u0.attachViews();
        this.f28369t0.setEventListener((MediaPlayer.EventListener) new C0529k(this));
        this.f28369t0.setVolume((int) (this.f28331H.contains("last_volume_vlc") ? Float.parseFloat(this.f28331H.getString("last_volume_vlc", null)) : 90.5f));
        this.f28351b0.setProgress(90);
        this.f28369t0.play();
    }

    public final AbstractC0277a c(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        int I7 = TextUtils.isEmpty(lastPathSegment) ? M.I(uri) : M.J(lastPathSegment);
        int i8 = 19;
        if (I7 == 2) {
            if (this.f28327B0.equals(HttpUrl.FRAGMENT_ENCODE_SET) || this.f28327B0.equals("hls")) {
                this.f28327B0 = "hls";
                Log.d("XCIPTV_TAG", " --------------TYPE_HLS---------------");
                HlsMediaSource$Factory hlsMediaSource$Factory = new HlsMediaSource$Factory(f28325E0);
                hlsMediaSource$Factory.f9468i = true;
                hlsMediaSource$Factory.f9461b = new d(9, false);
                return hlsMediaSource$Factory.b(I.a(uri));
            }
            if (this.f28327B0.equals("other")) {
                Log.d("XCIPTV_TAG", " --------------TYPE_OTHER---------------");
                this.f28327B0 = "other";
                InterfaceC3183h interfaceC3183h = f28325E0;
                C0073x c0073x = new C0073x(new p(), i8);
                j jVar = new j();
                b bVar = new b();
                I iA = I.a(uri);
                iA.f26702b.getClass();
                return new N(iA, interfaceC3183h, c0073x, jVar.b(iA), bVar, 1048576);
            }
        } else {
            if (I7 == 0) {
                return new DashMediaSource$Factory(f28325E0).b(I.a(uri));
            }
            if (I7 != 4) {
                throw new IllegalStateException(r.f("Unsupported type: ", I7));
            }
            if (this.f28327B0.equals(HttpUrl.FRAGMENT_ENCODE_SET) || this.f28327B0.equals("other")) {
                this.f28327B0 = "other";
                Log.d("XCIPTV_TAG", " --------------TYPE_OTHER---------------");
                InterfaceC3183h interfaceC3183h2 = f28325E0;
                C0073x c0073x2 = new C0073x(new p(), i8);
                j jVar2 = new j();
                b bVar2 = new b();
                I iA2 = I.a(uri);
                iA2.f26702b.getClass();
                return new N(iA2, interfaceC3183h2, c0073x2, jVar2.b(iA2), bVar2, 1048576);
            }
            if (this.f28327B0.equals("hls")) {
                this.f28327B0 = "hls";
                Log.d("XCIPTV_TAG", " --------------TYPE_HLS---------------");
                HlsMediaSource$Factory hlsMediaSource$Factory2 = new HlsMediaSource$Factory(f28325E0);
                hlsMediaSource$Factory2.f9468i = true;
                hlsMediaSource$Factory2.f9461b = new d(9, false);
                return hlsMediaSource$Factory2.b(I.a(uri));
            }
        }
        return null;
    }

    public final void d(String str) {
        Date date;
        Date date2;
        Date date3;
        int i8;
        float f8;
        SharedPreferences sharedPreferences = Methods.f29416a;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd:HH-mm");
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            date = simpleDateFormat.parse(str);
        } catch (ParseException unused) {
            date = null;
        }
        String str2 = simpleDateFormat2.format(date);
        int i9 = this.f28357h0;
        this.f28346W.setTimeZone(TimeZone.getTimeZone(this.f28331H.getString("timezone", null)));
        try {
            date2 = this.f28346W.parse(str2);
        } catch (ParseException unused2) {
            date2 = null;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date2);
        calendar.add(13, i9);
        String str3 = this.f28346W.format(calendar.getTime());
        SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        SimpleDateFormat simpleDateFormat4 = new SimpleDateFormat("yyyy-MM-dd:HH-mm");
        try {
            date3 = simpleDateFormat3.parse(str3);
        } catch (ParseException unused3) {
            date3 = null;
        }
        String str4 = simpleDateFormat4.format(date3);
        this.f28336M = String.valueOf((this.f28355f0 - this.f28357h0) / 60);
        String strA = Encrypt.a(this.f28366q0.f25480c);
        String strA2 = Encrypt.a(this.f28366q0.f25481d);
        StringBuilder sb = new StringBuilder();
        sb.append(Encrypt.a(this.f28366q0.f25482e));
        sb.append("/timeshift/");
        sb.append(strA);
        sb.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
        sb.append(strA2);
        sb.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
        a.h(sb, this.f28336M, MqttTopic.TOPIC_LEVEL_SEPARATOR, str4, MqttTopic.TOPIC_LEVEL_SEPARATOR);
        String strJ = r.j(sb, this.f28333J, ".ts");
        this.f28334K = strJ;
        this.f28334K = strJ.replaceAll(" ", HttpUrl.FRAGMENT_ENCODE_SET);
        if (!U2.z("ORT_WHICH_PLAYER", "EXO", "EXO")) {
            if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
                b(this.f28334K);
                return;
            } else {
                b(this.f28334K);
                return;
            }
        }
        String str5 = this.f28334K;
        Intent intent = getIntent();
        String strReplaceAll = str5.replaceAll(" ", HttpUrl.FRAGMENT_ENCODE_SET);
        r.q("PlayTVChannelsEXOPlayer ", strReplaceAll, "XCIPTV_TAG");
        this.f28347X.setBackgroundResource(R.drawable.btn_player_pause);
        this.f28345V.setText(Methods.a(this.f28355f0));
        e();
        CatchupPlayerActivity catchupPlayerActivity = this.f28330G;
        C0075z c0075z = new C0075z(catchupPlayerActivity);
        C0288l c0288lA = e7.a.a(catchupPlayerActivity, f28325E0, this.f28373x0);
        H1.i(!c0075z.f1149w);
        c0075z.f1130d = new C0073x(c0288lA, 1);
        intent.getBooleanExtra("prefer_extension_decoders", true);
        C0066p c0066p = new C0066p(catchupPlayerActivity.getApplicationContext());
        c0066p.f1052c = 2;
        H1.i(!c0075z.f1149w);
        c0075z.f1129c = new C0073x(c0066p, 2);
        O oA = c0075z.a();
        this.f28375z0 = oA;
        oA.U(this.f28326A0);
        O o4 = this.f28375z0;
        C0535m c0535m = new C0535m(this);
        o4.getClass();
        o4.f785S.a(c0535m);
        O o7 = this.f28375z0;
        C3121d c3121d = C3121d.f26823b;
        o7.P();
        String string = this.f28331H.getString("last_volume", null);
        if (this.f28331H.getString("last_volume", null) == null) {
            i8 = 50;
            f8 = 0.5f;
        } else {
            i8 = Integer.parseInt(string);
            f8 = i8 / 100.0f;
        }
        this.f28374y0.setPlayer(this.f28375z0);
        this.f28374y0.setResizeMode(this.f28372w0);
        this.f28375z0.W(f8);
        this.f28351b0.setProgress(i8);
        this.f28375z0.S(true);
        this.f28375z0.Q(c(Uri.parse(strReplaceAll)));
        this.f28375z0.K();
        this.f28375z0.h();
        if (this.f28355f0 > 0) {
            Handler handler = new Handler();
            this.f28352c0 = handler;
            C c8 = new C(this);
            this.f28353d0 = c8;
            handler.postDelayed(c8, 0L);
        }
    }

    public final void e() {
        if (!U2.z("ORT_WHICH_PLAYER", "EXO", "EXO")) {
            MediaPlayer mediaPlayer = this.f28369t0;
            if (mediaPlayer != null) {
                mediaPlayer.release();
            }
        } else if (this.f28375z0 != null) {
            Log.d("XCIPTV_TAG", "Release Player");
            this.f28375z0.L();
            this.f28375z0 = null;
            this.f28374y0.setPlayer(null);
        }
        RunnableC0526j runnableC0526j = this.f28364o0;
        if (runnableC0526j != null) {
            this.f28362m0.removeCallbacks(runnableC0526j);
        }
        RunnableC0526j runnableC0526j2 = this.f28365p0;
        if (runnableC0526j2 != null) {
            this.f28363n0.removeCallbacks(runnableC0526j2);
        }
        C c8 = this.f28353d0;
        if (c8 != null) {
            this.f28352c0.removeCallbacks(c8);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addFlags(128);
        setContentView(R.layout.activity_catchup_player);
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        this.f28346W = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        CatchupPlayerActivity catchupPlayerActivity = this.f28330G;
        int i8 = 0;
        this.f28331H = catchupPlayerActivity.getSharedPreferences("pe.hf.black20", 0);
        this.f28366q0 = A0.O.x("ORT_PROFILE", "Default (XC)", new c7.a(this, 0));
        this.f28332I = this.f28331H.edit();
        this.f28361l0 = new GestureDetector(this, new C0532l(this, i8));
        Bundle extras = getIntent().getExtras();
        Integer.parseInt(extras.getString("position"));
        this.f28333J = extras.getString("stream_id");
        this.f28336M = extras.getString("duration");
        this.f28335L = extras.getString("start_time");
        this.f28337N = extras.getString("title_desc");
        this.f28355f0 = Integer.parseInt(this.f28336M) * 60;
        Log.d("XCIPTV_TAG", "---------------Duration-------------" + this.f28336M);
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.progressBar_cud);
        this.f28338O = progressBar;
        progressBar.setVisibility(4);
        this.f28339P = (FrameLayout) findViewById(R.id.layout_list_cud);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.layout_seekbar_holder);
        this.f28341R = frameLayout;
        frameLayout.setVisibility(8);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R.id.layout_media_control);
        this.f28340Q = frameLayout2;
        frameLayout2.setVisibility(8);
        FrameLayout frameLayout3 = (FrameLayout) findViewById(R.id.layout_player_top_layer);
        this.f28342S = frameLayout3;
        frameLayout3.setOnTouchListener(this.f28329D0);
        int i9 = 1;
        this.f28342S.setFocusable(true);
        this.f28343T = (TextView) findViewById(R.id.txt_desc_title);
        this.f28344U = (TextView) findViewById(R.id.txt_start_time);
        this.f28345V = (TextView) findViewById(R.id.txt_end_time);
        this.f28347X = (ImageButton) findViewById(R.id.btn_p_play);
        this.f28348Y = (ImageButton) findViewById(R.id.btn_p_forward);
        this.f28349Z = (ImageButton) findViewById(R.id.btn_p_rewind);
        SeekBar seekBar = (SeekBar) findViewById(R.id.seekbar_audio);
        this.f28351b0 = seekBar;
        seekBar.setMax(100);
        SeekBar seekBar2 = (SeekBar) findViewById(R.id.seekbar_video);
        this.f28350a0 = seekBar2;
        seekBar2.setMax((this.f28355f0 - this.f28356g0) / this.f28354e0);
        this.f28350a0.setFocusable(false);
        this.f28374y0 = (PlayerView) findViewById(R.id.player_view4);
        this.f28367r0 = (SurfaceView) findViewById(R.id.surfaceView);
        if (this.f28331H.contains("agent")) {
            this.f28373x0 = this.f28331H.getString("agent", null);
        }
        f28325E0 = e7.a.f(catchupPlayerActivity, f28325E0, this.f28373x0);
        this.f28326A0 = new k0(new j0());
        if (this.f28331H.contains("whichplayer_catchup") && this.f28331H.getString("whichplayer_catchup", null).equals("EXO")) {
            q0.q().g("ORT_WHICH_PLAYER", "EXO");
        } else {
            q0.q().g("ORT_WHICH_PLAYER", "VLC");
        }
        if (U2.z("ORT_WHICH_PLAYER", "EXO", "EXO")) {
            this.f28374y0.setUseController(false);
            if (this.f28331H.contains("video_resize_exo")) {
                this.f28372w0 = Integer.parseInt(this.f28331H.getString("video_resize_exo", null));
            } else {
                this.f28372w0 = 3;
            }
            this.f28374y0.setResizeMode(this.f28372w0);
            this.f28374y0.setUseController(false);
            this.f28367r0.setVisibility(8);
        } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
            if (this.f28331H.contains("video_resize_vlc")) {
                this.f28372w0 = Integer.parseInt(this.f28331H.getString("video_resize_vlc", null));
            } else {
                this.f28372w0 = 4;
            }
            this.f28374y0.setVisibility(8);
        }
        this.f28347X.setOnClickListener(new ViewOnClickListenerC0520h(this, i8));
        this.f28348Y.setOnClickListener(new ViewOnClickListenerC0520h(this, i9));
        this.f28349Z.setOnClickListener(new ViewOnClickListenerC0520h(this, 2));
        this.f28350a0.setOnSeekBarChangeListener(new C0523i(this, 0));
        this.f28351b0.setOnSeekBarChangeListener(new C0523i(this, 1));
        this.f28343T.setText(this.f28337N);
        d(this.f28335L);
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        Log.v("XCIPTV_TAG", "onDestroy()...");
        e();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i8, KeyEvent keyEvent) {
        Log.i("XCIPTV_TAG", "Keycode: " + i8);
        if (i8 == 4) {
            Log.d("XCIPTV_TAG", "BACK button pressed");
            if (this.f28340Q.isShown()) {
                this.f28340Q.setVisibility(8);
                this.f28342S.requestFocus();
            } else {
                e();
                finish();
            }
            return true;
        }
        switch (i8) {
            case 19:
                Log.d("XCIPTV_TAG", "UP button pressed");
                return true;
            case 20:
                Log.d("XCIPTV_TAG", "DOWN button pressed");
                return true;
            case 21:
                Log.d("XCIPTV_TAG", "LEFT button pressed");
                if (!this.f28340Q.isShown()) {
                    O o4 = this.f28375z0;
                    o4.c0();
                    float f8 = o4.f762E0;
                    this.f28360k0 = f8;
                    this.f28351b0.setProgress((int) (f8 * 100.0f));
                    this.f28341R.setVisibility(0);
                    float f9 = this.f28360k0;
                    if (f9 > 0.0f) {
                        float f10 = f9 - 0.1f;
                        this.f28360k0 = f10;
                        this.f28375z0.W(f10);
                        this.f28351b0.setProgress((int) (this.f28360k0 * 100.0f));
                        this.f28332I.putString("last_volume", String.valueOf((int) (this.f28360k0 * 100.0f)));
                        this.f28332I.commit();
                    }
                }
                Log.d("XCIPTV_TAG", String.valueOf(this.f28360k0));
                return true;
            case 22:
                Log.d("XCIPTV_TAG", "RIGHT button pressed");
                if (!this.f28340Q.isShown()) {
                    O o7 = this.f28375z0;
                    o7.c0();
                    float f11 = o7.f762E0;
                    this.f28360k0 = f11;
                    this.f28351b0.setProgress((int) (f11 * 100.0f));
                    this.f28341R.setVisibility(0);
                    float f12 = this.f28360k0;
                    if (f12 < 1.0f) {
                        float f13 = f12 + 0.1f;
                        this.f28360k0 = f13;
                        this.f28375z0.W(f13);
                        this.f28351b0.setProgress((int) (this.f28360k0 * 100.0f));
                        this.f28332I.putString("last_volume", String.valueOf((int) (this.f28360k0 * 100.0f)));
                        this.f28332I.commit();
                    }
                }
                Log.d("XCIPTV_TAG", String.valueOf(this.f28360k0));
                return true;
            case 23:
                Log.i("XCIPTV_TAG", "KEYCODE_DPAD_CENTER Pressed ---  ");
                if (!this.f28340Q.isShown()) {
                    if (this.f28340Q.isShown()) {
                        this.f28340Q.setVisibility(8);
                    } else {
                        this.f28340Q.setVisibility(0);
                    }
                    this.f28347X.requestFocus();
                    a();
                }
                return true;
            default:
                return super.onKeyUp(i8, keyEvent);
        }
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        Log.v("XCIPTV_TAG", "onPause()...");
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        Log.v("XCIPTV_TAG", "onResume()...");
        this.f28347X.setBackgroundResource(R.drawable.btn_player_pause);
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
        Log.v("XCIPTV_TAG", "onStart()...");
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        Log.v("XCIPTV_TAG", "onStop()...");
        this.f28347X.setBackgroundResource(R.drawable.btn_player_play);
    }
}
