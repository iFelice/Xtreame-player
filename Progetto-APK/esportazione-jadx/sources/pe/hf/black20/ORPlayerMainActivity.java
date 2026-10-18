package pe.hf.black20;

import A0.O;
import Y.C0389a;
import Y.K;
import android.app.AlertDialog;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.animation.AnimationUtils;
import android.view.animation.LayoutAnimationController;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import b7.A0;
import b7.C0550t0;
import b7.C0552u0;
import b7.C0554v0;
import b7.C0562z0;
import b7.ViewOnClickListenerC0556w0;
import b7.ViewOnClickListenerC0560y0;
import b7.ViewOnFocusChangeListenerC0558x0;
import c7.a;
import com.google.protobuf.U2;
import h7.i;
import i7.b;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONObject;
import p039f.AbstractActivityC3000o;
import p039f.N;
import p039f.ViewOnClickListenerC2988c;
import p064i0.c;
import p083k3.j;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.services.OTRServices;
import pe.hf.black20.updatecontents.EZServerUpdateContents;
import pe.hf.black20.updatecontents.M3UUpdateContents;
import pe.hf.black20.updatecontents.XCUpdateContents;
import pe.hf.black20.util.Config;
import pe.hf.black20.util.Methods;
import pe.hf.black20.util.d;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class ORPlayerMainActivity extends AbstractActivityC3000o implements d {

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public static int f28772D0 = 0;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public static int f28773E0 = 0;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public static boolean f28774F0 = false;
    public static final String FINISH_ALERT = "finish_alert";

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public static boolean f28775G0 = false;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public static boolean f28776H0 = false;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public static boolean f28777I0 = false;

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public static boolean f28778J0 = false;
    public static final String LOAD_TV_FRAGMENT = "load_tv_fragment";
    public static final String THEME = "yes";

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public ArrayList f28779A0;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public String f28780B0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public SharedPreferences f28783f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public SharedPreferences.Editor f28784g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public FrameLayout f28785h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public ListView f28786i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public FrameLayout f28787j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public String[] f28788k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public Integer[] f28789l0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public LayoutAnimationController f28791n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public C0389a f28792o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public a f28793p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public c7.d f28794q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public i f28795r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public C0562z0 f28796s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public SimpleDateFormat f28797t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public String f28798u0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public JSONArray f28802y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public ArrayList f28803z0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final ORPlayerMainActivity f28782e0 = this;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public long f28790m0 = 0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public boolean f28799v0 = false;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public ArrayList f28800w0 = new ArrayList();

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public ArrayList f28801x0 = new ArrayList();

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public final C0562z0 f28781C0 = new C0562z0(this, 0);

    static {
        System.loadLibrary("native-lib");
        f28774F0 = false;
        f28775G0 = true;
        f28776H0 = true;
        f28777I0 = false;
        f28778J0 = false;
    }

    public static void A(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("pe.hf.black20", 0);
        if (sharedPreferences.contains("whichPanel")) {
            q0.q().g("ORT_WHICH_PANEL", sharedPreferences.getString("whichPanel", null));
        }
    }

    public static native String gan();

    public static void v(c7.d dVar, String str, Context context, String str2) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.xciptv_dialog, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(context).create();
        TextView textView = (TextView) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#4f000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd);
        if (str2 == "VOD") {
            textView.setText(R.string.do_you_want_to_delete_from_continue_watching);
        } else {
            textView.setText("Do you want to remove from continue watching?");
        }
        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
        button.setText(context.getString(R.string.xc_yes));
        button.setOnClickListener(new N(alertDialogCreate, str2, dVar, str));
        Button button2 = (Button) viewInflate.findViewById(R.id.button_no);
        button2.setText(context.getString(R.string.xc_no));
        button2.setOnClickListener(new ViewOnClickListenerC0556w0(alertDialogCreate, 0));
        alertDialogCreate.show();
    }

    public static boolean w(Context context) {
        Iterator<JobInfo> it = ((JobScheduler) context.getSystemService("jobscheduler")).getAllPendingJobs().iterator();
        while (it.hasNext()) {
            if (it.next().getId() == 123) {
                return true;
            }
        }
        return false;
    }

    @Override // pe.hf.black20.util.d
    public final void b(int i8, String str, String str2) {
        Log.d("XCIPTV_TAG", "CategoriesActivity -- onFailureJson Error");
        str2.getClass();
        if (str2.equals("getIPAddress")) {
            try {
                SharedPreferences.Editor editorEdit = this.f28783f0.edit();
                this.f28784g0 = editorEdit;
                editorEdit.putString("external_ip", "0.0.0.0");
                this.f28784g0.apply();
                this.f28784g0.commit();
            } catch (Exception unused) {
                Log.d("XCIPTV_TAG", "SplashActivity -- loginCheckXC");
            }
        }
    }

    @Override // pe.hf.black20.util.d
    public final void f(String str, String str2) {
        str2.getClass();
        if (str2.equals("getIPAddress")) {
            try {
                String string = new JSONObject(str).getString("ip");
                SharedPreferences.Editor editorEdit = this.f28783f0.edit();
                this.f28784g0 = editorEdit;
                editorEdit.putString("external_ip", string);
                this.f28784g0.apply();
                this.f28784g0.commit();
            } catch (Exception unused) {
                Log.d("XCIPTV_TAG", "SplashActivity -- loginCheckXC");
            }
        }
    }

    @Override // p000a.m, android.app.Activity
    public final void onBackPressed() {
        s();
    }

    @Override // Y.AbstractActivityC0409v, p000a.m, D.h, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        ORPlayerMainActivity oRPlayerMainActivity;
        super.onCreate(bundle);
        setContentView(R.layout.orplayer_activity_main);
        this.f28785h0 = (FrameLayout) findViewById(R.id.layout_fragment_holder);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 30) {
            getDisplay().getRealMetrics(displayMetrics);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        }
        f28772D0 = displayMetrics.widthPixels;
        f28773E0 = displayMetrics.densityDpi / 160;
        ORPlayerMainActivity oRPlayerMainActivity2 = this.f28782e0;
        SharedPreferences sharedPreferences = oRPlayerMainActivity2.getSharedPreferences("pe.hf.black20", 0);
        this.f28783f0 = sharedPreferences;
        if (sharedPreferences.contains("xciptv_profile")) {
            q0.q().g("ORT_PROFILE", this.f28783f0.getString("xciptv_profile", null));
        }
        this.f28793p0 = new a(oRPlayerMainActivity2, 0);
        c7.d dVar = new c7.d(oRPlayerMainActivity2);
        this.f28794q0 = dVar;
        dVar.L0();
        this.f28795r0 = O.x("ORT_PROFILE", "Default (XC)", this.f28793p0);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
        this.f28797t0 = simpleDateFormat;
        this.f28798u0 = simpleDateFormat.format(new Date());
        this.f28787j0 = (FrameLayout) findViewById(R.id.layout_menu_holder);
        this.f28786i0 = (ListView) findViewById(R.id.menu_listview);
        LayoutAnimationController layoutAnimationController = new LayoutAnimationController(AnimationUtils.loadAnimation(oRPlayerMainActivity2, android.R.anim.slide_in_left), 0.2f);
        this.f28791n0 = layoutAnimationController;
        this.f28786i0.setLayoutAnimation(layoutAnimationController);
        ((ImageButton) findViewById(R.id.btn_menu)).setOnClickListener(new ViewOnClickListenerC2988c(this, 18));
        if (!Methods.E(oRPlayerMainActivity2, gan())) {
            finishAffinity();
        }
        this.f28803z0 = new ArrayList();
        this.f28779A0 = new ArrayList();
        this.f28803z0.add("Home");
        this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_home_icon));
        String str6 = "1";
        String str7 = "XCIPTV_WHICH_PORTAL_SELECTED";
        if (Config.f29414b.equals("yes")) {
            this.f28803z0.add("Live TV");
            this.f28803z0.add("Movies");
            this.f28803z0.add("TV Shows");
            this.f28803z0.add("Catchup");
            this.f28803z0.add("Radio");
            this.f28803z0.add("Accounts");
            this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_tv_icon));
            this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_vod_icon));
            this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_tv_show));
            this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_catchup_icon));
            this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_radio_icon));
            this.f28779A0.add(Integer.valueOf(R.drawable.settings_account));
            str7 = "XCIPTV_WHICH_PORTAL_SELECTED";
            str = "ORT_PROFILE";
            str2 = "5";
            str3 = "4";
            str4 = "3";
            str5 = "2";
            str6 = "1";
        } else {
            str = "ORT_PROFILE";
            String str8 = "5";
            String str9 = "4";
            String str10 = "2";
            if (this.f28783f0.contains("XCIPTV_WHICH_PORTAL_SELECTED")) {
                if (this.f28783f0.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals("1")) {
                    if (this.f28783f0.getString("btn_live", null).equals("Yes")) {
                        this.f28803z0.add("Live TV");
                        this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_tv_icon));
                    }
                    if (this.f28783f0.getString("btn_vod", null).equals("Yes")) {
                        this.f28803z0.add("Movies");
                        this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_vod_icon));
                    }
                    if (this.f28783f0.getString("btn_series", null).equals("Yes")) {
                        this.f28803z0.add("TV Shows");
                        this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_tv_show));
                    }
                    if (this.f28783f0.getString("btn_catchup", null).equals("Yes")) {
                        this.f28803z0.add("Catchup");
                        this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_catchup_icon));
                    }
                    if (this.f28783f0.getString("btn_radio", null).equals("Yes")) {
                        this.f28803z0.add("Radio");
                        this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_radio_icon));
                    }
                    if (this.f28783f0.getString("btn_account", null).equals("yes")) {
                        this.f28803z0.add("Accounts");
                        this.f28779A0.add(Integer.valueOf(R.drawable.settings_account));
                    }
                    str7 = "XCIPTV_WHICH_PORTAL_SELECTED";
                    str6 = "1";
                    str2 = str8;
                    str3 = str9;
                    str4 = "3";
                } else if (this.f28783f0.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals(str10)) {
                    if (this.f28783f0.getString("btn_live2", null).equals("Yes")) {
                        this.f28803z0.add("Live TV");
                        this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_tv_icon));
                    }
                    if (this.f28783f0.getString("btn_vod2", null).equals("Yes")) {
                        this.f28803z0.add("Movies");
                        this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_vod_icon));
                    }
                    if (this.f28783f0.getString("btn_series2", null).equals("Yes")) {
                        this.f28803z0.add("TV Shows");
                        this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_tv_show));
                    }
                    if (this.f28783f0.getString("btn_catchup2", null).equals("Yes")) {
                        this.f28803z0.add("Catchup");
                        this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_catchup_icon));
                    }
                    if (this.f28783f0.getString("btn_radio2", null).equals("Yes")) {
                        this.f28803z0.add("Radio");
                        this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_radio_icon));
                    }
                    if (this.f28783f0.getString("btn_account", null).equals("yes")) {
                        this.f28803z0.add("Accounts");
                        this.f28779A0.add(Integer.valueOf(R.drawable.settings_account));
                    }
                    str7 = "XCIPTV_WHICH_PORTAL_SELECTED";
                    str5 = str10;
                    str6 = "1";
                    str2 = str8;
                    str3 = str9;
                    str4 = "3";
                } else {
                    str4 = "3";
                    if (this.f28783f0.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals(str4)) {
                        if (this.f28783f0.getString("btn_live3", null).equals("Yes")) {
                            str10 = str10;
                            this.f28803z0.add("Live TV");
                            this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_tv_icon));
                        }
                        str10 = str10;
                        if (this.f28783f0.getString("btn_vod3", null).equals("Yes")) {
                            this.f28803z0.add("Movies");
                            this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_vod_icon));
                        }
                        if (this.f28783f0.getString("btn_series3", null).equals("Yes")) {
                            this.f28803z0.add("TV Shows");
                            this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_tv_show));
                        }
                        if (this.f28783f0.getString("btn_catchup3", null).equals("Yes")) {
                            this.f28803z0.add("Catchup");
                            this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_catchup_icon));
                        }
                        if (this.f28783f0.getString("btn_radio3", null).equals("Yes")) {
                            this.f28803z0.add("Radio");
                            this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_radio_icon));
                        }
                        if (this.f28783f0.getString("btn_account", null).equals("yes")) {
                            this.f28803z0.add("Accounts");
                            this.f28779A0.add(Integer.valueOf(R.drawable.settings_account));
                        }
                    } else if (this.f28783f0.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals(str9)) {
                        if (this.f28783f0.getString("btn_live4", null).equals("Yes")) {
                            str10 = str10;
                            str9 = str9;
                            this.f28803z0.add("Live TV");
                            this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_tv_icon));
                        }
                        str10 = str10;
                        str9 = str9;
                        if (this.f28783f0.getString("btn_vod4", null).equals("Yes")) {
                            this.f28803z0.add("Movies");
                            this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_vod_icon));
                        }
                        if (this.f28783f0.getString("btn_series4", null).equals("Yes")) {
                            this.f28803z0.add("TV Shows");
                            this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_tv_show));
                        }
                        if (this.f28783f0.getString("btn_catchup4", null).equals("Yes")) {
                            this.f28803z0.add("Catchup");
                            this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_catchup_icon));
                        }
                        if (this.f28783f0.getString("btn_radio4", null).equals("Yes")) {
                            this.f28803z0.add("Radio");
                            this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_radio_icon));
                        }
                        if (this.f28783f0.getString("btn_account", null).equals("yes")) {
                            this.f28803z0.add("Accounts");
                            this.f28779A0.add(Integer.valueOf(R.drawable.settings_account));
                        }
                    } else {
                        if (this.f28783f0.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals(str8)) {
                            if (this.f28783f0.getString("btn_live5", null).equals("Yes")) {
                                str10 = str10;
                                str9 = str9;
                                str8 = str8;
                                this.f28803z0.add("Live TV");
                                this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_tv_icon));
                            }
                            str10 = str10;
                            str9 = str9;
                            str8 = str8;
                            if (this.f28783f0.getString("btn_vod5", null).equals("Yes")) {
                                this.f28803z0.add("Movies");
                                this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_vod_icon));
                            }
                            if (this.f28783f0.getString("btn_series5", null).equals("Yes")) {
                                this.f28803z0.add("TV Shows");
                                this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_tv_show));
                            }
                            if (this.f28783f0.getString("btn_catchup5", null).equals("Yes")) {
                                this.f28803z0.add("Catchup");
                                this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_catchup_icon));
                            }
                            if (this.f28783f0.getString("btn_radio5", null).equals("Yes")) {
                                this.f28803z0.add("Radio");
                                this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_radio_icon));
                            }
                            if (this.f28783f0.getString("btn_account", null).equals("yes")) {
                                this.f28803z0.add("Accounts");
                                this.f28779A0.add(Integer.valueOf(R.drawable.settings_account));
                            }
                        } else {
                            str10 = str10;
                            str9 = str9;
                            str2 = str8;
                        }
                        str3 = str9;
                    }
                    str2 = str8;
                    str3 = str9;
                }
                str5 = str10;
            } else {
                str2 = str8;
                str3 = str9;
                str4 = "3";
                str5 = str10;
                if (this.f28783f0.getString("btn_live", null).equals("Yes")) {
                    this.f28803z0.add("Live TV");
                    this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_tv_icon));
                }
                if (this.f28783f0.getString("btn_vod", null).equals("Yes")) {
                    this.f28803z0.add("Movies");
                    this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_vod_icon));
                }
                if (this.f28783f0.getString("btn_series", null).equals("Yes")) {
                    this.f28803z0.add("TV Shows");
                    this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_tv_show));
                }
                if (this.f28783f0.getString("btn_catchup", null).equals("Yes")) {
                    this.f28803z0.add("Catchup");
                    this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_catchup_icon));
                }
                if (this.f28783f0.getString("btn_radio", null).equals("Yes")) {
                    this.f28803z0.add("Radio");
                    this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_radio_icon));
                }
                if (this.f28783f0.getString("btn_account", null).equals("yes")) {
                    this.f28803z0.add("Accounts");
                    this.f28779A0.add(Integer.valueOf(R.drawable.settings_account));
                }
                SharedPreferences.Editor editorEdit = this.f28783f0.edit();
                this.f28784g0 = editorEdit;
                str7 = "XCIPTV_WHICH_PORTAL_SELECTED";
                str6 = "1";
                editorEdit.putString(str7, str6);
                this.f28784g0.apply();
                this.f28784g0.commit();
            }
        }
        this.f28803z0.add("Settings");
        this.f28803z0.add("Exit");
        this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_settings_icon));
        this.f28779A0.add(Integer.valueOf(R.drawable.orplayer_menu_exit_icon));
        if (this.f28783f0.contains("epg_mode")) {
            q0.q().g("ORT_LIVE_TV_EPG_MODE", this.f28783f0.getString("epg_mode", null).toLowerCase());
        }
        if (this.f28783f0.contains("whichPanel")) {
            q0.q().g("ORT_WHICH_PANEL", this.f28783f0.getString("whichPanel", null));
        }
        if (!U2.z("ORT_WHICH_PANEL", "xtreamcodes", "m3u")) {
            this.f28795r0 = O.x(str, "Default (XC)", this.f28793p0);
            q0.q().g("ORT_PROFILE_ID", this.f28795r0.f25478a);
            q0.q().g("ORT_PROFILE_SERVER", this.f28795r0.f25482e);
            q0.q().g("ORT_PROFILE_USERNAME", this.f28795r0.f25480c);
            q0.q().g("ORT_PROFILE_PASSWORD", this.f28795r0.f25481d);
            String strA = Encrypt.a(this.f28795r0.f25482e);
            this.f28784g0 = this.f28783f0.edit();
            this.f28784g0 = this.f28783f0.edit();
            if (!this.f28783f0.contains(str7)) {
                this.f28784g0.putString(str7, str6);
            } else if (this.f28783f0.getString("portal", null).equals(strA) && this.f28795r0.f25479b.contains("PANEL 1")) {
                this.f28784g0.putString(str7, str6);
            } else if (this.f28783f0.getString("portal2", null).equals(strA) && this.f28795r0.f25479b.contains("PANEL 2")) {
                this.f28784g0.putString(str7, str5);
            } else if (this.f28783f0.getString("portal3", null).equals(strA) && this.f28795r0.f25479b.contains("PANEL 3")) {
                this.f28784g0.putString(str7, str4);
            } else if (this.f28783f0.getString("portal3", null).equals(strA) && this.f28795r0.f25479b.contains("PANEL 4")) {
                this.f28784g0.putString(str7, str3);
            } else if (this.f28783f0.getString("portal3", null).equals(strA) && this.f28795r0.f25479b.contains("PANEL 5")) {
                this.f28784g0.putString(str7, str2);
            }
            this.f28784g0.apply();
            this.f28784g0.commit();
        }
        if (!this.f28783f0.contains("pc_lock")) {
            SharedPreferences.Editor editorEdit2 = this.f28783f0.edit();
            this.f28784g0 = editorEdit2;
            editorEdit2.putString("pc_lock", "no");
            this.f28784g0.apply();
            this.f28784g0.commit();
            q0.q().g("ORT_PARENTAL_CONTROL_STATUS", "unlocked");
        } else if (this.f28783f0.getString("pc_lock", null).equals("no")) {
            q0.q().g("ORT_PARENTAL_CONTROL_STATUS", "unlocked");
        } else {
            q0.q().g("ORT_PARENTAL_CONTROL_STATUS", "locked");
        }
        if (this.f28783f0.contains("parental_contorl")) {
            q0.q().g("ORT_PARENTAL_CONTROL", this.f28783f0.getString("parental_contorl", null));
        }
        this.f28796s0 = new C0562z0(this, 1);
        IntentFilter intentFilter = new IntentFilter(LOAD_TV_FRAGMENT);
        IntentFilter intentFilter2 = new IntentFilter(FINISH_ALERT);
        if (i8 >= 33) {
            oRPlayerMainActivity = oRPlayerMainActivity2;
            U4.a.f(oRPlayerMainActivity, this.f28796s0, intentFilter, 4);
            U4.a.f(oRPlayerMainActivity, this.f28796s0, intentFilter2, 4);
        } else {
            oRPlayerMainActivity = oRPlayerMainActivity2;
            registerReceiver(this.f28796s0, intentFilter);
            registerReceiver(this.f28796s0, intentFilter2);
        }
        String[] strArr = new String[this.f28803z0.size()];
        this.f28788k0 = strArr;
        this.f28803z0.toArray(strArr);
        Integer[] numArr = new Integer[this.f28779A0.size()];
        this.f28789l0 = numArr;
        this.f28779A0.toArray(numArr);
        this.f28786i0.setAdapter((ListAdapter) new C0552u0(oRPlayerMainActivity, this.f28788k0, this.f28789l0));
        this.f28786i0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0558x0(this, 0));
        this.f28786i0.setOnItemClickListener(new C0554v0(this, 0));
        f28777I0 = true;
        K kR = this.f7985X.R();
        kR.getClass();
        C0389a c0389a = new C0389a(kR);
        this.f28792o0 = c0389a;
        c0389a.g(R.id.layout_fragment_holder, new C0550t0());
        this.f28792o0.d(false);
        if (!this.f28783f0.contains("mqtt_url") || this.f28783f0.getString("mqtt_url", null).equals("0")) {
            return;
        }
        new b(oRPlayerMainActivity, false);
    }

    @Override // p039f.AbstractActivityC3000o, Y.AbstractActivityC0409v, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        q0.q().e("ORT_isCategoriesActivityVisible", false);
        unregisterReceiver(this.f28796s0);
        C0562z0 c0562z0 = this.f28781C0;
        if (c0562z0.isOrderedBroadcast()) {
            c.a(this).d(c0562z0);
        }
        ORPlayerMainActivity oRPlayerMainActivity = this.f28782e0;
        Methods.W(oRPlayerMainActivity, OTRServices.class);
        if (!this.f28783f0.contains("mqtt_url") || this.f28783f0.getString("mqtt_url", null).equals("0")) {
            return;
        }
        String str = b.f25585a;
        Log.d("XCIPTV_TAG", "MQTT Client Reconnect called");
        b.f(oRPlayerMainActivity);
    }

    @Override // p039f.AbstractActivityC3000o, android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i8, KeyEvent keyEvent) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f28790m0 < (!f28776H0 ? 400 : 100)) {
            return true;
        }
        boolean zOnKeyDown = super.onKeyDown(i8, keyEvent);
        this.f28790m0 = jCurrentTimeMillis;
        return zOnKeyDown;
    }

    @Override // Y.AbstractActivityC0409v, android.app.Activity
    public final void onPause() {
        super.onPause();
        q0.q().e("ORT_isCategoriesActivityVisible", false);
        Log.v("XCIPTV_TAG", "ChannelListActivity-onPause()...");
    }

    @Override // Y.AbstractActivityC0409v, p000a.m, android.app.Activity, D.a
    public final void onRequestPermissionsResult(int i8, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i8, strArr, iArr);
        if (i8 == 2) {
            Log.d("XCIPTV_TAG", "CategoriesActivity - External storage2");
            if (iArr[0] == 0) {
                Log.v("XCIPTV_TAG", "Permission: " + strArr[0] + "was " + iArr[0]);
                return;
            }
            return;
        }
        if (i8 != 3) {
            return;
        }
        Log.d("XCIPTV_TAG", "CategoriesActivity - External storage1");
        if (iArr[0] == 0) {
            Log.v("XCIPTV_TAG", "CategoriesActivity Permission: " + strArr[0] + "was " + iArr[0]);
        }
    }

    @Override // Y.AbstractActivityC0409v, android.app.Activity
    public final void onResume() {
        super.onResume();
        q0.q().e("ORT_isCategoriesActivityVisible", true);
        Log.v("XCIPTV_TAG", "ORPlayerHomeActivity-onResume()...");
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 33) {
            t();
        } else if (i8 < 23 || checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            Log.v("ContentValues", "Permission is granted2");
            t();
        } else {
            Log.v("ContentValues", "Permission is revoked2");
            D.c.D(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 2);
        }
        Methods.W(this.f28782e0, OTRServices.class);
        Configuration configuration = getBaseContext().getResources().getConfiguration();
        Locale locale = new Locale(this.f28783f0.getString("language", null));
        Locale.setDefault(locale);
        configuration.locale = locale;
        getBaseContext().getResources().updateConfiguration(configuration, getBaseContext().getResources().getDisplayMetrics());
        C0562z0 c0562z0 = this.f28781C0;
        if (!c0562z0.isOrderedBroadcast()) {
            c.a(this).b(c0562z0, new IntentFilter("ORPlayerHomeActivityProgramAndMessageReceiver"));
        }
        if (this.f28783f0.contains("epg_mode")) {
            q0.q().g("ORT_LIVE_TV_EPG_MODE", this.f28783f0.getString("epg_mode", null).toLowerCase());
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes") && U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes")) {
            String string = this.f28783f0.getString("exp_date", null);
            this.f28780B0 = string;
            if (string.equals("null") || this.f28780B0.isEmpty() || this.f28780B0.equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                this.f28780B0 = getString(R.string.no_expiration);
                return;
            }
            this.f28780B0 = Methods.t(this.f28783f0.getString("exp_date", null));
            int iK = Methods.k(this.f28783f0.getString("exp_date", null));
            if (iK < 0 || iK > 4) {
                if (iK < 0) {
                    startActivity(new Intent(this, (Class<?>) LoginActivity.class));
                    finish();
                    return;
                }
                return;
            }
            if (this.f28783f0.getString("show_expire", null).equals("yes")) {
                try {
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
                    this.f28797t0 = simpleDateFormat;
                    String str = simpleDateFormat.format(new Date());
                    this.f28798u0 = str;
                    Date date = this.f28797t0.parse(str);
                    if (!this.f28783f0.contains("last_expire_message")) {
                        u(getString(R.string.your_account_will_be_expired) + this.f28780B0);
                    } else if (Methods.j(this.f28797t0.parse(this.f28783f0.getString("last_expire_message", null)), date) > 4) {
                        u(getString(R.string.your_account_will_be_expired) + this.f28780B0);
                    }
                    SharedPreferences.Editor editorEdit = this.f28783f0.edit();
                    editorEdit.putString("last_expire_message", this.f28798u0);
                    editorEdit.apply();
                    editorEdit.commit();
                } catch (ParseException e8) {
                    Log.v("XCIPTV_TAG", "CategoriesActivity - ParseException ----" + e8.getMessage());
                }
            }
        }
    }

    @Override // p039f.AbstractActivityC3000o, Y.AbstractActivityC0409v, android.app.Activity
    public final void onStop() {
        super.onStop();
        q0.q().e("ORT_isCategoriesActivityVisible", false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z7) {
        super.onWindowFocusChanged(z7);
        if (z7) {
            if (Methods.P() && Methods.T(this.f28782e0)) {
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

    public final void s() {
        ORPlayerMainActivity oRPlayerMainActivity = this.f28782e0;
        View viewInflate = LayoutInflater.from(oRPlayerMainActivity).inflate(R.layout.xciptv_dialog, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(oRPlayerMainActivity).create();
        ((TextView) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#4f000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText(R.string.are_you_sure_you_want_to_exit);
        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
        button.setText(oRPlayerMainActivity.getString(R.string.xc_yes));
        button.setOnClickListener(new ViewOnClickListenerC0560y0(this, alertDialogCreate, 0));
        Button button2 = (Button) viewInflate.findViewById(R.id.button_no);
        button2.setText(oRPlayerMainActivity.getString(R.string.xc_no));
        button2.setOnClickListener(new ViewOnClickListenerC0560y0(this, alertDialogCreate, 1));
        alertDialogCreate.show();
    }

    public final void t() {
        int iJ;
        if (!this.f28783f0.contains("tvvodseries_dl_time")) {
            z();
            return;
        }
        if (U2.z("ORT_PORTAL_CHANGE", "no", "yes")) {
            z();
            return;
        }
        try {
            iJ = Methods.j(this.f28797t0.parse(this.f28783f0.getString("tvvodseries_dl_time", null)), this.f28797t0.parse(this.f28798u0));
        } catch (ParseException unused) {
            iJ = 0;
        }
        if (iJ > 12) {
            z();
            return;
        }
        Log.d("XCIPTV_TAG", "ORPlayerHomeActivity - Caching EPG Data");
        Log.v("XCIPTV_TAG", "ORPlayerHomeActivity - TV VOD Sereis - Content updated less than 6 hrs ago." + String.valueOf(iJ));
        if (this.f28783f0.contains("load_last_channel") && this.f28783f0.getString("load_last_channel", null).equals("yes")) {
            if (!this.f28783f0.contains("last_profile")) {
                if (f28778J0 || !this.f28783f0.contains("last_channel_name")) {
                    return;
                }
                q0.q().e("ORT_isLoadLastLiveTVChannel", true);
                f28778J0 = true;
                this.f28799v0 = true;
                new j(this).execute(new Void[0]);
                return;
            }
            if (this.f28783f0.getString("last_profile", null).equals(q0.q().c("ORT_PROFILE", "Default (XC)")) && !f28778J0 && this.f28783f0.contains("last_channel_name")) {
                q0.q().e("ORT_isLoadLastLiveTVChannel", true);
                f28778J0 = true;
                this.f28799v0 = true;
                new j(this).execute(new Void[0]);
            }
        }
    }

    public final void u(String str) {
        ORPlayerMainActivity oRPlayerMainActivity = this.f28782e0;
        View viewInflate = LayoutInflater.from(oRPlayerMainActivity).inflate(R.layout.xcip_dialog_single_btn, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(oRPlayerMainActivity).create();
        ((TextView) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText(str);
        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
        button.setText(oRPlayerMainActivity.getString(R.string.xc_ok));
        button.setOnClickListener(new ViewOnClickListenerC0560y0(this, alertDialogCreate, 4));
        alertDialogCreate.show();
    }

    public final void x() {
        f28774F0 = false;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f28786i0.getLayoutParams();
        layoutParams.width = f28773E0 * 55;
        this.f28786i0.setLayoutParams(layoutParams);
        this.f28786i0.invalidateViews();
        this.f28786i0.setLayoutAnimation(this.f28791n0);
        A0 a8 = new A0(this.f28787j0, f28773E0 * 60);
        a8.setDuration(300L);
        this.f28787j0.startAnimation(a8);
    }

    public final void y() {
        f28774F0 = true;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f28786i0.getLayoutParams();
        layoutParams.width = f28772D0 / 6;
        this.f28786i0.setLayoutParams(layoutParams);
        this.f28786i0.invalidateViews();
        this.f28786i0.setLayoutAnimation(this.f28791n0);
        A0 a8 = new A0(this.f28787j0, f28772D0 / 6);
        a8.setDuration(300L);
        this.f28787j0.startAnimation(a8);
        this.f28786i0.setSelection(0);
        this.f28786i0.requestFocus();
    }

    public final void z() {
        if (this.f28783f0.contains("whichPanel")) {
            q0.q().g("ORT_WHICH_PANEL", this.f28783f0.getString("whichPanel", null));
        }
        q0.q().f(0, "ORT_PROCESS_STATUS");
        if (q0.q().c("ORT_WHICH_PANEL", "xtreamcodes").equals("xtreamcodes")) {
            Methods.m(this.f28782e0, "no");
            startActivity(new Intent(this, (Class<?>) XCUpdateContents.class));
        } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "ezserver")) {
            startActivity(new Intent(this, (Class<?>) EZServerUpdateContents.class));
        } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "m3u")) {
            startActivity(new Intent(this, (Class<?>) M3UUpdateContents.class));
        }
    }
}
