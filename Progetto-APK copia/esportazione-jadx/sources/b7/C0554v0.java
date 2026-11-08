package b7;

import Y.C0389a;
import android.app.AlertDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.text.format.DateFormat;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.google.protobuf.U2;
import java.io.File;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Collections;
import java.util.Iterator;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.json.JSONException;
import p039f.ViewOnClickListenerC2988c;
import pe.hf.black20.BackupActivity;
import pe.hf.black20.LanguagePickerActivity;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.OtherSettingsActivity;
import pe.hf.black20.PlayStreamEPGActivity;
import pe.hf.black20.R;
import pe.hf.black20.RecordsActivity;
import pe.hf.black20.SettingsMenuActivity;
import pe.hf.black20.UsersHistoryActivity;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.epg.EPGActivityXMLTV;
import pe.hf.black20.services.OTRServices;
import pe.hf.black20.speedtest.SpeedTestActivity;
import pe.hf.black20.util.Config;
import pe.hf.black20.util.Methods;

/* JADX INFO: renamed from: b7.v0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C0554v0 implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10507G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f10508H;

    public /* synthetic */ C0554v0(Object obj, int i8) {
        this.f10507G = i8;
        this.f10508H = obj;
    }

    private final void a(int i8) {
        PlayStreamEPGActivity playStreamEPGActivity = ((AsyncTaskC0522h1) this.f10508H).f10310b;
        String strK = U2.k("ORT_PROFILE_USERNAME", HttpUrl.FRAGMENT_ENCODE_SET);
        String strK2 = U2.k("ORT_PROFILE_PASSWORD", HttpUrl.FRAGMENT_ENCODE_SET);
        try {
            if (playStreamEPGActivity.f28875P0 == i8) {
                playStreamEPGActivity.Z();
            }
            String str = PlayStreamEPGActivity.f28828Q2;
            playStreamEPGActivity.f28924k0 = playStreamEPGActivity.f28939p0.getJSONObject(i8).getString("stream_id");
            if (playStreamEPGActivity.f28939p0.getJSONObject(i8).getString("direct_source").equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                PlayStreamEPGActivity.f28828Q2 = Encrypt.a(z4.q0.q().c("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)) + "/live/" + strK + MqttTopic.TOPIC_LEVEL_SEPARATOR + strK2 + MqttTopic.TOPIC_LEVEL_SEPARATOR + playStreamEPGActivity.f28924k0 + "." + playStreamEPGActivity.f28909f0.getString("streamFormat", null);
            } else {
                PlayStreamEPGActivity.f28828Q2 = playStreamEPGActivity.f28939p0.getJSONObject(i8).getString("direct_source");
            }
            playStreamEPGActivity.f28915h0 = playStreamEPGActivity.f28939p0.getJSONObject(i8).getString("name");
            playStreamEPGActivity.f28875P0 = i8;
            playStreamEPGActivity.f28841D2 = playStreamEPGActivity.f28939p0.getJSONObject(i8).getString("stream_icon");
            if (!str.equals(PlayStreamEPGActivity.f28828Q2)) {
                if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                    playStreamEPGActivity.v(PlayStreamEPGActivity.f28828Q2);
                } else if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("VLC")) {
                    playStreamEPGActivity.D(PlayStreamEPGActivity.f28828Q2);
                }
            }
            playStreamEPGActivity.f28893X1.setText(playStreamEPGActivity.f28915h0);
            playStreamEPGActivity.f28949s1.setText(playStreamEPGActivity.f28915h0);
            playStreamEPGActivity.f28968y2 = playStreamEPGActivity.f28954u0[playStreamEPGActivity.f28855I1];
            if (!z4.q0.q().c("ORT_WHICH_PANEL", "xtreamcodes").equals("xtreamcodes") && !z4.q0.q().c("ORT_WHICH_PANEL", "xtreamcodes").equals("otr")) {
                if (z4.q0.q().c("ORT_WHICH_PANEL", "xtreamcodes").equals("ezserver")) {
                    playStreamEPGActivity.f28918i0 = playStreamEPGActivity.f28939p0.getJSONObject(i8).getString("name");
                    playStreamEPGActivity.M();
                    return;
                }
                return;
            }
            if (z4.q0.q().b("ORT_PROCESS_STATUS") == 0) {
                playStreamEPGActivity.N(playStreamEPGActivity.f28863L0.H0(playStreamEPGActivity.f28924k0), "no");
            }
        } catch (JSONException unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v50 */
    /* JADX WARN: Type inference failed for: r4v51, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v54 */
    /* JADX WARN: Type inference failed for: r4v55 */
    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i8, long j8) {
        String hostAddress;
        String hostAddress2;
        RadioGroup radioGroup;
        ?? r7;
        int i9 = this.f10507G;
        String upperCase = HttpUrl.FRAGMENT_ENCODE_SET;
        Object obj = this.f10508H;
        switch (i9) {
            case 0:
                ORPlayerMainActivity oRPlayerMainActivity = (ORPlayerMainActivity) obj;
                boolean zEquals = oRPlayerMainActivity.f28788k0[i8].equals("Home");
                p039f.S s7 = oRPlayerMainActivity.f7985X;
                if (zEquals) {
                    ORPlayerMainActivity.f28777I0 = true;
                    oRPlayerMainActivity.x();
                    Y.K kR = s7.R();
                    kR.getClass();
                    C0389a c0389a = new C0389a(kR);
                    oRPlayerMainActivity.f28792o0 = c0389a;
                    c0389a.g(R.id.layout_fragment_holder, new C0550t0());
                    oRPlayerMainActivity.f28792o0.d(false);
                } else if (oRPlayerMainActivity.f28788k0[i8].equals("Live TV")) {
                    oRPlayerMainActivity.x();
                    z4.q0.q().g("ORT_WHICH_CAT", "TV");
                    Y.K kR2 = s7.R();
                    kR2.getClass();
                    C0389a c0389a2 = new C0389a(kR2);
                    oRPlayerMainActivity.f28792o0 = c0389a2;
                    c0389a2.g(R.id.layout_fragment_holder, new M0());
                    oRPlayerMainActivity.f28792o0.d(false);
                } else if (oRPlayerMainActivity.f28788k0[i8].equals("TV Guide")) {
                    oRPlayerMainActivity.x();
                    Intent intent = new Intent(oRPlayerMainActivity, (Class<?>) EPGActivityXMLTV.class);
                    oRPlayerMainActivity.startActivity(intent);
                    intent.addFlags(67108864);
                    oRPlayerMainActivity.startActivity(intent);
                } else if (oRPlayerMainActivity.f28788k0[i8].equals("Movies")) {
                    oRPlayerMainActivity.x();
                    Y.K kR3 = s7.R();
                    kR3.getClass();
                    C0389a c0389a3 = new C0389a(kR3);
                    oRPlayerMainActivity.f28792o0 = c0389a3;
                    c0389a3.g(R.id.layout_fragment_holder, new S0());
                    oRPlayerMainActivity.f28792o0.d(false);
                } else if (oRPlayerMainActivity.f28788k0[i8].equals("TV Shows")) {
                    oRPlayerMainActivity.x();
                    Y.K kR4 = s7.R();
                    kR4.getClass();
                    C0389a c0389a4 = new C0389a(kR4);
                    oRPlayerMainActivity.f28792o0 = c0389a4;
                    c0389a4.g(R.id.layout_fragment_holder, new I0());
                    oRPlayerMainActivity.f28792o0.d(false);
                } else if (oRPlayerMainActivity.f28788k0[i8].equals("Catchup")) {
                    oRPlayerMainActivity.x();
                    z4.q0.q().g("ORT_WHICH_CAT", "CATCHUP");
                    Y.K kR5 = s7.R();
                    kR5.getClass();
                    C0389a c0389a5 = new C0389a(kR5);
                    oRPlayerMainActivity.f28792o0 = c0389a5;
                    c0389a5.g(R.id.layout_fragment_holder, new M0());
                    oRPlayerMainActivity.f28792o0.d(false);
                } else if (oRPlayerMainActivity.f28788k0[i8].equals("Radio")) {
                    oRPlayerMainActivity.x();
                    z4.q0.q().g("ORT_WHICH_CAT", "RADIO");
                    Y.K kR6 = s7.R();
                    kR6.getClass();
                    C0389a c0389a6 = new C0389a(kR6);
                    oRPlayerMainActivity.f28792o0 = c0389a6;
                    c0389a6.g(R.id.layout_fragment_holder, new M0());
                    oRPlayerMainActivity.f28792o0.d(false);
                } else if (oRPlayerMainActivity.f28788k0[i8].equals("Accounts")) {
                    oRPlayerMainActivity.x();
                    Intent intent2 = new Intent(oRPlayerMainActivity, (Class<?>) UsersHistoryActivity.class);
                    oRPlayerMainActivity.startActivity(intent2);
                    intent2.addFlags(67108864);
                    oRPlayerMainActivity.startActivity(intent2);
                } else if (oRPlayerMainActivity.f28788k0[i8].equals("Settings")) {
                    oRPlayerMainActivity.x();
                    Intent intent3 = new Intent(oRPlayerMainActivity, (Class<?>) SettingsMenuActivity.class);
                    oRPlayerMainActivity.startActivity(intent3);
                    intent3.addFlags(67108864);
                    oRPlayerMainActivity.startActivity(intent3);
                } else if (oRPlayerMainActivity.f28788k0[i8].equals("Exit")) {
                    oRPlayerMainActivity.s();
                }
                break;
            case 1:
                a(i8);
                break;
            case 2:
                RecordsActivity recordsActivity = (RecordsActivity) obj;
                ListView listView = RecordsActivity.f29060W;
                recordsActivity.getClass();
                try {
                    String string = recordsActivity.f29065K.getJSONObject(i8).getString("id");
                    String string2 = recordsActivity.f29065K.getJSONObject(i8).getString("path");
                    recordsActivity.f29070P = recordsActivity.f29065K.getJSONObject(i8).getString("id");
                    String string3 = recordsActivity.f29065K.getJSONObject(i8).getString("title");
                    recordsActivity.f29068N = string3;
                    recordsActivity.f29068N = string3.replaceAll("[^a-zA-Z0-9]", HttpUrl.FRAGMENT_ENCODE_SET);
                    recordsActivity.f29069O = Uri.fromFile(new File(string2)).toString();
                    recordsActivity.f29071Q = recordsActivity.f29065K.getJSONObject(i8).getString("date");
                    recordsActivity.f29072R = String.valueOf(i8);
                    if (recordsActivity.f29065K.getJSONObject(i8).getString("status").equals("Scheduled")) {
                        recordsActivity.b(string, string2, "Scheduled");
                    } else if (recordsActivity.f29065K.getJSONObject(i8).getString("status").equals("Recording Now")) {
                        recordsActivity.b(string, string2, "Recording Now");
                    } else {
                        recordsActivity.b(string, string2, "Recorded");
                    }
                } catch (JSONException e8) {
                    e8.printStackTrace();
                    return;
                }
                break;
            default:
                SettingsMenuActivity settingsMenuActivity = (SettingsMenuActivity) obj;
                boolean zEquals2 = settingsMenuActivity.f29166P[i8].equals("APP");
                SettingsMenuActivity settingsMenuActivity2 = settingsMenuActivity.f29160J;
                if (zEquals2) {
                    View viewInflate = LayoutInflater.from(settingsMenuActivity2).inflate(R.layout.xcip_dialog_show_app, (ViewGroup) null);
                    AlertDialog alertDialogCreate = new AlertDialog.Builder(settingsMenuActivity2).create();
                    TextView textView = (TextView) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#4f000000")), alertDialogCreate, viewInflate, R.id.txt_appname_d);
                    TextView textView2 = (TextView) viewInflate.findViewById(R.id.txt_ver_d);
                    TextView textView3 = (TextView) viewInflate.findViewById(R.id.txt_license_d);
                    TextView textView4 = (TextView) viewInflate.findViewById(R.id.txt_cid_d);
                    TextView textView5 = (TextView) viewInflate.findViewById(R.id.txt_expire_d);
                    TextView textView6 = (TextView) viewInflate.findViewById(R.id.txt_status_d);
                    textView.setText(settingsMenuActivity.f29157G.getString("appname", null).toUpperCase());
                    String upperCase2 = Config.f29413a.toUpperCase();
                    textView3.setText("****" + upperCase2.substring(upperCase2.length() - 12));
                    textView4.setText(settingsMenuActivity.f29157G.getString("customerid", null).toUpperCase());
                    textView5.setText(settingsMenuActivity.f29157G.getString("expire", null));
                    textView6.setText(settingsMenuActivity.f29157G.getString("status_app", null));
                    try {
                        textView2.setText(settingsMenuActivity.getPackageManager().getPackageInfo(settingsMenuActivity.getPackageName(), 0).versionName + " (" + String.valueOf(2001) + ")");
                        break;
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                    Button button = (Button) viewInflate.findViewById(R.id.button_yes);
                    button.setText(settingsMenuActivity2.getString(R.string.xc_close));
                    button.setOnClickListener(new D1(settingsMenuActivity, alertDialogCreate, 6));
                    ((Button) viewInflate.findViewById(R.id.btn_update)).setOnClickListener(new D1(settingsMenuActivity, alertDialogCreate, 7));
                    alertDialogCreate.show();
                } else if (settingsMenuActivity.f29166P[i8].equals(settingsMenuActivity2.getString(R.string.xc_account))) {
                    View viewInflate2 = LayoutInflater.from(settingsMenuActivity2).inflate(R.layout.xcip_dialog_show_account, (ViewGroup) null);
                    AlertDialog alertDialogCreate2 = new AlertDialog.Builder(settingsMenuActivity2).create();
                    TextView textView7 = (TextView) A0.O.w(alertDialogCreate2.getWindow(), new ColorDrawable(Color.parseColor("#4f000000")), alertDialogCreate2, viewInflate2, R.id.txt_username_d);
                    TextView textView8 = (TextView) viewInflate2.findViewById(R.id.txt_message_d);
                    TextView textView9 = (TextView) viewInflate2.findViewById(R.id.txt_trail_d);
                    TextView textView10 = (TextView) viewInflate2.findViewById(R.id.txt_maxcon_d);
                    TextView textView11 = (TextView) viewInflate2.findViewById(R.id.txt_expire_d);
                    TextView textView12 = (TextView) viewInflate2.findViewById(R.id.txt_status_d);
                    TextView textView13 = (TextView) viewInflate2.findViewById(R.id.txt_username_d_label);
                    textView7.setText(Encrypt.a(settingsMenuActivity.f29159I.f25480c).toUpperCase());
                    if (settingsMenuActivity.f29157G.getString("message", null).toUpperCase().equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                        textView8.setText(R.string.no_messages);
                    } else {
                        textView8.setText(settingsMenuActivity.f29157G.getString("message", null).toUpperCase());
                    }
                    if (settingsMenuActivity.f29157G.getString("is_trial", null).toUpperCase().equals("0")) {
                        textView9.setText(R.string.this_is_not_tiral_account);
                    } else {
                        textView9.setText(settingsMenuActivity.f29157G.getString("is_trial", null).toUpperCase());
                    }
                    if (settingsMenuActivity.f29157G.getString("max_connections", null).toUpperCase().equals("0")) {
                        textView10.setText(R.string.unlimited_connection);
                    } else {
                        textView10.setText(settingsMenuActivity.f29157G.getString("max_connections", null).toUpperCase());
                    }
                    if (settingsMenuActivity.f29157G.getString("exp_date", null).toUpperCase().equals("NULL")) {
                        textView11.setText(R.string.no_expiration);
                    } else if (settingsMenuActivity.f29157G.getString("show_expire", null).equals("yes")) {
                        String string4 = settingsMenuActivity.f29157G.getString("exp_date", null);
                        SharedPreferences sharedPreferences = Methods.f29416a;
                        textView11.setText(String.valueOf(DateFormat.format("yyyy/MM/dd hh:mm:ss aa", Long.parseLong(string4) * 1000)));
                    } else {
                        textView11.setText("Unavailable");
                    }
                    textView12.setText(settingsMenuActivity.f29157G.getString("status_acc", null).toUpperCase());
                    if (settingsMenuActivity.f29157G.contains("login_type") && settingsMenuActivity.f29157G.getString("login_type", null).equals("activationXOR")) {
                        textView13.setText("Activation Code");
                        textView7.setText(Encrypt.a(settingsMenuActivity.f29157G.getString("xco_activation_cod", null)));
                    }
                    Button button2 = (Button) viewInflate2.findViewById(R.id.button_yes);
                    Button button3 = (Button) viewInflate2.findViewById(R.id.button_sw);
                    button3.setVisibility(8);
                    button2.setText(settingsMenuActivity2.getString(R.string.xc_close));
                    button2.setOnClickListener(new D1(settingsMenuActivity, alertDialogCreate2, 12));
                    button3.setOnClickListener(new ViewOnClickListenerC2988c(settingsMenuActivity, 23));
                    alertDialogCreate2.show();
                } else if (settingsMenuActivity.f29166P[i8].equals(settingsMenuActivity.getString(R.string.player))) {
                    View viewInflate3 = LayoutInflater.from(settingsMenuActivity2).inflate(R.layout.xciptv_dialog_select_player_stream_cat, (ViewGroup) null);
                    AlertDialog alertDialogCreate3 = new AlertDialog.Builder(settingsMenuActivity2).create();
                    RadioGroup radioGroup2 = (RadioGroup) A0.O.w(alertDialogCreate3.getWindow(), new ColorDrawable(Color.parseColor("#4f000000")), alertDialogCreate3, viewInflate3, R.id.rbg_tv);
                    RadioGroup radioGroup3 = (RadioGroup) viewInflate3.findViewById(R.id.rbg_vod);
                    RadioGroup radioGroup4 = (RadioGroup) viewInflate3.findViewById(R.id.rbg_series);
                    RadioGroup radioGroup5 = (RadioGroup) viewInflate3.findViewById(R.id.rbg_catchup);
                    RadioGroup radioGroup6 = (RadioGroup) viewInflate3.findViewById(R.id.rbg_multiscreen);
                    RadioButton radioButton = (RadioButton) viewInflate3.findViewById(R.id.rb_tv_exo);
                    RadioButton radioButton2 = (RadioButton) viewInflate3.findViewById(R.id.rb_tv_vlc);
                    RadioButton radioButton3 = (RadioButton) viewInflate3.findViewById(R.id.rb_vod_exo);
                    RadioButton radioButton4 = (RadioButton) viewInflate3.findViewById(R.id.rb_vod_vlc);
                    RadioButton radioButton5 = (RadioButton) viewInflate3.findViewById(R.id.rb_series_exo);
                    RadioButton radioButton6 = (RadioButton) viewInflate3.findViewById(R.id.rb_series_vlc);
                    RadioButton radioButton7 = (RadioButton) viewInflate3.findViewById(R.id.rb_catchup_exo);
                    RadioButton radioButton8 = (RadioButton) viewInflate3.findViewById(R.id.rb_catchup_vlc);
                    RadioButton radioButton9 = (RadioButton) viewInflate3.findViewById(R.id.rb_ms_exo);
                    RadioButton radioButton10 = (RadioButton) viewInflate3.findViewById(R.id.rb_ms_vlc);
                    if (settingsMenuActivity.f29157G.contains("whichplayer_tv")) {
                        radioGroup = radioGroup2;
                        if (settingsMenuActivity.f29157G.getString("whichplayer_tv", null).equals("EXO")) {
                            r7 = 1;
                            radioButton.setChecked(true);
                        } else {
                            r7 = 1;
                            radioButton2.setChecked(true);
                        }
                    } else {
                        radioGroup = radioGroup2;
                        r7 = 1;
                        radioButton.setChecked(true);
                    }
                    if (!settingsMenuActivity.f29157G.contains("whichplayer_vod") || settingsMenuActivity.f29157G.getString("whichplayer_vod", null).equals("EXO")) {
                        radioButton3.setChecked(r7);
                    } else {
                        radioButton4.setChecked(r7);
                    }
                    if (settingsMenuActivity.f29157G.contains("whichplayer_series") && settingsMenuActivity.f29157G.getString("whichplayer_series", null).equals("EXO")) {
                        radioButton5.setChecked(r7);
                    } else {
                        radioButton6.setChecked(r7);
                    }
                    if (settingsMenuActivity.f29157G.contains("whichplayer_catchup") && settingsMenuActivity.f29157G.getString("whichplayer_catchup", null).equals("EXO")) {
                        radioButton7.setChecked(r7);
                    } else {
                        radioButton8.setChecked(r7);
                    }
                    if (!settingsMenuActivity.f29157G.contains("whichplayer_ms") || settingsMenuActivity.f29157G.getString("whichplayer_ms", null).equals("EXO")) {
                        radioButton9.setChecked(r7);
                    } else {
                        radioButton10.setChecked(r7);
                    }
                    radioGroup.setOnCheckedChangeListener(new C1(settingsMenuActivity, viewInflate3, 0));
                    radioGroup3.setOnCheckedChangeListener(new C1(settingsMenuActivity, viewInflate3, r7));
                    radioGroup4.setOnCheckedChangeListener(new C1(settingsMenuActivity, viewInflate3, 2));
                    radioGroup5.setOnCheckedChangeListener(new C1(settingsMenuActivity, viewInflate3, 3));
                    radioGroup6.setOnCheckedChangeListener(new C1(settingsMenuActivity, viewInflate3, 4));
                    Button button4 = (Button) viewInflate3.findViewById(R.id.btn_select_player_ok);
                    button4.setText(R.string.xc_ok);
                    button4.setOnClickListener(new D1(settingsMenuActivity, alertDialogCreate3, 0));
                    alertDialogCreate3.show();
                } else if (settingsMenuActivity.f29166P[i8].equals(settingsMenuActivity.getString(R.string.stream_type))) {
                    View viewInflate4 = LayoutInflater.from(settingsMenuActivity2).inflate(R.layout.xciptv_dialog_select_stream_type, (ViewGroup) null);
                    AlertDialog alertDialogCreate4 = new AlertDialog.Builder(settingsMenuActivity2).create();
                    TextView textView14 = (TextView) A0.O.w(alertDialogCreate4.getWindow(), new ColorDrawable(Color.parseColor("#4f000000")), alertDialogCreate4, viewInflate4, R.id.txt_player_selected);
                    ((TextView) viewInflate4.findViewById(R.id.txt_title)).setText(settingsMenuActivity2.getString(R.string.xc_select) + " Stream Type");
                    if (settingsMenuActivity.f29157G.getString("streamFormat", null).equals("ts")) {
                        textView14.setText(settingsMenuActivity2.getString(R.string.xc_selected_mpegts));
                    } else {
                        textView14.setText(settingsMenuActivity2.getString(R.string.xc_selected_hls));
                    }
                    Button button5 = (Button) viewInflate4.findViewById(R.id.btn_stream_type_ts);
                    button5.setText(settingsMenuActivity2.getString(R.string.xc_select) + " MPEGTS");
                    button5.setOnClickListener(new E1(settingsMenuActivity, alertDialogCreate4, textView14, 0));
                    Button button6 = (Button) viewInflate4.findViewById(R.id.btn_stream_type_hls);
                    button6.setText(settingsMenuActivity2.getString(R.string.xc_select) + " HLS");
                    int i10 = 1;
                    button6.setOnClickListener(new E1(settingsMenuActivity, alertDialogCreate4, textView14, i10));
                    Button button7 = (Button) viewInflate4.findViewById(R.id.btn_stream_type_cancel);
                    button7.setText(settingsMenuActivity2.getString(R.string.xc_cancel_str));
                    button7.setOnClickListener(new D1(settingsMenuActivity, alertDialogCreate4, i10));
                    alertDialogCreate4.show();
                } else if (!settingsMenuActivity.f29166P[i8].equals("Player Settings")) {
                    int i11 = 5;
                    if (settingsMenuActivity.f29166P[i8].equals(settingsMenuActivity2.getString(R.string.xc_parental))) {
                        if (!settingsMenuActivity.f29157G.contains("parental_recovery")) {
                            String strE = Methods.e(5);
                            SharedPreferences.Editor editorEdit = settingsMenuActivity.f29157G.edit();
                            editorEdit.putString("parental_recovery", strE);
                            editorEdit.apply();
                            editorEdit.commit();
                            Log.d("XCIPTV_TAG", "----Parental Recovery Key---- " + strE);
                        }
                        View viewInflate5 = LayoutInflater.from(settingsMenuActivity2).inflate(R.layout.xciptv_dialog_password, (ViewGroup) null);
                        AlertDialog alertDialogCreate5 = new AlertDialog.Builder(settingsMenuActivity2).create();
                        SettingsMenuActivity.f29156X = (EditText) A0.O.w(alertDialogCreate5.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate5, viewInflate5, R.id.ed_password);
                        ((TextView) viewInflate5.findViewById(R.id.txt_code)).setText(settingsMenuActivity.getString(R.string.parental_default_password) + settingsMenuActivity.f29157G.getString("parental_recovery", null));
                        Button button8 = (Button) viewInflate5.findViewById(R.id.btn_parental_password_ok);
                        settingsMenuActivity.f29168R = button8;
                        button8.setOnClickListener(new D1(settingsMenuActivity, alertDialogCreate5, 4));
                        alertDialogCreate5.show();
                    } else if (settingsMenuActivity.f29166P[i8].equals(settingsMenuActivity2.getString(R.string.xc_update_contents))) {
                        View viewInflate6 = LayoutInflater.from(settingsMenuActivity2).inflate(R.layout.xciptv_dialog_download_content, (ViewGroup) null);
                        AlertDialog alertDialogCreate6 = new AlertDialog.Builder(settingsMenuActivity2).create();
                        Button button9 = (Button) A0.O.w(alertDialogCreate6.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate6, viewInflate6, R.id.btn_download_content_tv_vod_series);
                        button9.setText(settingsMenuActivity2.getString(R.string.xc_tv_vod_series));
                        button9.setVisibility(8);
                        Button button10 = (Button) viewInflate6.findViewById(R.id.btn_download_content_all);
                        button10.setText(settingsMenuActivity2.getString(R.string.xc_update_all));
                        button10.setOnClickListener(new D1(settingsMenuActivity, alertDialogCreate6, 2));
                        Button button11 = (Button) viewInflate6.findViewById(R.id.btn_download_content_cancel);
                        button11.setText(settingsMenuActivity2.getString(R.string.xc_cancel_str));
                        button11.setOnClickListener(new D1(settingsMenuActivity, alertDialogCreate6, 3));
                        alertDialogCreate6.show();
                    } else if (settingsMenuActivity.f29166P[i8].equals(settingsMenuActivity2.getString(R.string.xc_epg_time_shift))) {
                        if (settingsMenuActivity.f29157G.contains("timeShiftHR")) {
                            settingsMenuActivity.f29163M = Integer.parseInt(settingsMenuActivity.f29157G.getString("timeShiftHR", null));
                            if (settingsMenuActivity.f29157G.contains("timeShiftMin")) {
                                settingsMenuActivity.f29164N = Integer.parseInt(settingsMenuActivity.f29157G.getString("timeShiftMin", null));
                            } else {
                                settingsMenuActivity.f29164N = Integer.parseInt("0");
                            }
                        } else {
                            settingsMenuActivity.f29163M = Integer.parseInt("0");
                            settingsMenuActivity.f29164N = Integer.parseInt("0");
                        }
                        View viewInflate7 = LayoutInflater.from(settingsMenuActivity2).inflate(R.layout.xciptv_dialog_epg_timeshift, (ViewGroup) null);
                        AlertDialog alertDialogCreate7 = new AlertDialog.Builder(settingsMenuActivity2).create();
                        TextView textView15 = (TextView) A0.O.w(alertDialogCreate7.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate7, viewInflate7, R.id.txt_title);
                        textView15.setText(((int) settingsMenuActivity.f29163M) + " Hr " + Math.abs((int) settingsMenuActivity.f29164N) + " Min");
                        ((Button) viewInflate7.findViewById(R.id.btn_auto)).setOnClickListener(new G1(settingsMenuActivity, textView15, 0));
                        ((Button) viewInflate7.findViewById(R.id.btn_minus)).setOnClickListener(new G1(settingsMenuActivity, textView15, 1));
                        ((Button) viewInflate7.findViewById(R.id.btn_add)).setOnClickListener(new G1(settingsMenuActivity, textView15, 2));
                        ((Button) viewInflate7.findViewById(R.id.btn_close)).setOnClickListener(new D1(settingsMenuActivity, alertDialogCreate7, i11));
                        alertDialogCreate7.show();
                    } else if (settingsMenuActivity.f29166P[i8].equals(settingsMenuActivity2.getString(R.string.xc_speed_test))) {
                        settingsMenuActivity.startActivity(new Intent(settingsMenuActivity, (Class<?>) SpeedTestActivity.class));
                    } else if (settingsMenuActivity.f29166P[i8].equals(settingsMenuActivity2.getString(R.string.backup_restore))) {
                        settingsMenuActivity.startActivity(new Intent(settingsMenuActivity, (Class<?>) BackupActivity.class));
                    } else if (settingsMenuActivity.f29166P[i8].equals(settingsMenuActivity2.getString(R.string.remote_control))) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(settingsMenuActivity.getString(R.string.your_remote_control_pair_code));
                        sb.append(": ");
                        SharedPreferences sharedPreferences2 = Methods.f29416a;
                        try {
                            Iterator it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    Iterator it2 = Collections.list(((NetworkInterface) it.next()).getInetAddresses()).iterator();
                                    while (true) {
                                        if (it2.hasNext()) {
                                            InetAddress inetAddress = (InetAddress) it2.next();
                                            if (!inetAddress.isLoopbackAddress()) {
                                                hostAddress = inetAddress.getHostAddress();
                                                if (hostAddress.indexOf(58) < 1) {
                                                }
                                            }
                                        }
                                        hostAddress = HttpUrl.FRAGMENT_ENCODE_SET;
                                    }
                                } else {
                                    hostAddress = HttpUrl.FRAGMENT_ENCODE_SET;
                                }
                            }
                        } catch (Exception unused2) {
                        }
                        if (hostAddress.equals(HttpUrl.FRAGMENT_ENCODE_SET) || hostAddress.equals("192.168.49.1")) {
                            try {
                                hostAddress2 = InetAddress.getByAddress(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(((WifiManager) settingsMenuActivity2.getSystemService("wifi")).getConnectionInfo().getIpAddress()).array()).getHostAddress();
                            } catch (UnknownHostException unused3) {
                                hostAddress2 = null;
                            }
                            hostAddress = hostAddress2;
                        }
                        Log.d("XCIPTV_TAG", "Methods ipaddress - " + hostAddress);
                        String[] strArrSplit = hostAddress.split("\\.");
                        if (strArrSplit.length > 3) {
                            String strConcat = strArrSplit[3];
                            if (strConcat.length() == 1) {
                                strConcat = "XCP".concat(strConcat);
                            } else if (strConcat.length() == 2) {
                                strConcat = "XC".concat(strConcat);
                            } else if (strConcat.length() == 3) {
                                strConcat = "X".concat(strConcat);
                            }
                            String strReplaceAll = strConcat.replaceAll("[XCP]", HttpUrl.FRAGMENT_ENCODE_SET);
                            upperCase = strConcat.toUpperCase();
                            Log.d("XCIPTV_TAG", "Methods lastOtect - ".concat(strConcat));
                            Log.d("XCIPTV_TAG", "Methods actual_lastOtect - " + strReplaceAll);
                        }
                        sb.append(upperCase);
                        settingsMenuActivity.a(sb.toString(), "msg");
                    } else if (settingsMenuActivity.f29166P[i8].equals("Language")) {
                        settingsMenuActivity.startActivity(new Intent(settingsMenuActivity, (Class<?>) LanguagePickerActivity.class));
                    } else if (settingsMenuActivity.f29166P[i8].equals(settingsMenuActivity2.getString(R.string.xc_support))) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(settingsMenuActivity.f29157G.getString("support_email", null));
                        sb2.append("\n");
                        settingsMenuActivity.a(U2.h(settingsMenuActivity.f29157G, "support_phone", null, sb2), "msg");
                    } else if (settingsMenuActivity.f29166P[i8].equals(settingsMenuActivity2.getString(R.string.xc_other_settings))) {
                        settingsMenuActivity.startActivity(new Intent(settingsMenuActivity, (Class<?>) OtherSettingsActivity.class));
                    } else if (settingsMenuActivity.f29166P[i8].equals(settingsMenuActivity2.getString(R.string.clear_cache))) {
                        settingsMenuActivity.a(settingsMenuActivity.getString(R.string.after_clearing_the_cache_the_app_will_restart), "clearcache");
                    } else if (settingsMenuActivity.f29166P[i8].equals(settingsMenuActivity2.getString(R.string.xc_signout))) {
                        Methods.Y(settingsMenuActivity2, OTRServices.class);
                        AlertDialog.Builder builder = new AlertDialog.Builder(settingsMenuActivity);
                        builder.setTitle("Confirmation!");
                        builder.setMessage("Are you sure?");
                        builder.setPositiveButton("YES", new F1(settingsMenuActivity, 0));
                        builder.setNegativeButton("NO", new F1(settingsMenuActivity, 1));
                        builder.create().show();
                    }
                } else {
                    View viewInflate8 = LayoutInflater.from(settingsMenuActivity2).inflate(R.layout.xciptv_dialog, (ViewGroup) null);
                    AlertDialog alertDialogCreate8 = new AlertDialog.Builder(settingsMenuActivity2).create();
                    ((TextView) A0.O.w(alertDialogCreate8.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate8, viewInflate8, R.id.txt_title_xd)).setText(R.string.select_player_to_set_display_size);
                    Button button12 = (Button) viewInflate8.findViewById(R.id.button_yes);
                    button12.setText(settingsMenuActivity2.getString(R.string.xc_yes));
                    Button button13 = (Button) viewInflate8.findViewById(R.id.button_no);
                    button13.setText(settingsMenuActivity2.getString(R.string.xc_cancel_str));
                    button12.setText(R.string.ExoPlayer);
                    button13.setText(R.string.vlc_player);
                    button12.setOnClickListener(new D1(settingsMenuActivity, alertDialogCreate8, 10));
                    button13.setOnClickListener(new D1(settingsMenuActivity, alertDialogCreate8, 11));
                    alertDialogCreate8.show();
                }
                break;
        }
    }
}
