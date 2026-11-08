package b7;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import okhttp3.HttpUrl;
import pe.hf.black20.R;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public final class N extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10145a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f10146b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String[] f10147c;

    public /* synthetic */ N(Context context, String[] strArr, int i8) {
        this.f10145a = i8;
        this.f10146b = context;
        this.f10147c = strArr;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        String[] strArr = this.f10147c;
        switch (this.f10145a) {
            case 0:
                break;
        }
        return strArr.length;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i8) {
        return null;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i8) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public final View getView(int i8, View view, ViewGroup viewGroup) {
        String[] strArr = this.f10147c;
        Context context = this.f10146b;
        switch (this.f10145a) {
            case 0:
                SharedPreferences sharedPreferences = context.getSharedPreferences("pe.hf.black20", 0);
                View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.activity_other_settings_item, (ViewGroup) null);
                TextView textView = (TextView) viewInflate.findViewById(R.id.txt_item);
                TextView textView2 = (TextView) viewInflate.findViewById(R.id.txt_status);
                textView.setText(strArr[i8]);
                textView2.setTextColor(Color.parseColor("#A4C639"));
                textView2.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                if (strArr[i8].equals("ENGLISH (US)") && sharedPreferences.contains("language")) {
                    if (sharedPreferences.getString("language", null).equals("en")) {
                        textView2.setText("SELECTED");
                    } else {
                        textView2.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                }
                if (strArr[i8].equals("عربى (AR)") && sharedPreferences.contains("language")) {
                    if (sharedPreferences.getString("language", null).equals("ar")) {
                        textView2.setText("SELECTED");
                    } else {
                        textView2.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                }
                if (strArr[i8].equals("বাংলা (BN)") && sharedPreferences.contains("language")) {
                    if (sharedPreferences.getString("language", null).equals("bn")) {
                        textView2.setText("SELECTED");
                    } else {
                        textView2.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                }
                if (strArr[i8].equals("中文 (ZH)") && sharedPreferences.contains("language")) {
                    if (sharedPreferences.getString("language", null).equals("zh")) {
                        textView2.setText("SELECTED");
                    } else {
                        textView2.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                }
                if (strArr[i8].equals("FRANÇAISE (FR)") && sharedPreferences.contains("language")) {
                    if (sharedPreferences.getString("language", null).equals("fr")) {
                        textView2.setText("SELECTED");
                    } else {
                        textView2.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                }
                if (strArr[i8].equals("DEUTSCHE (DE)") && sharedPreferences.contains("language")) {
                    if (sharedPreferences.getString("language", null).equals("de")) {
                        textView2.setText("SELECTED");
                    } else {
                        textView2.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                }
                if (strArr[i8].equals("हिन्दी (HI)") && sharedPreferences.contains("language")) {
                    if (sharedPreferences.getString("language", null).equals("hi")) {
                        textView2.setText("SELECTED");
                    } else {
                        textView2.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                }
                if (strArr[i8].equals("മലയാളം (ML)") && sharedPreferences.contains("language")) {
                    if (sharedPreferences.getString("language", null).equals("ml")) {
                        textView2.setText("SELECTED");
                    } else {
                        textView2.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                }
                if (strArr[i8].equals("ITALIANA (IT)") && sharedPreferences.contains("language")) {
                    if (sharedPreferences.getString("language", null).equals("it")) {
                        textView2.setText("SELECTED");
                    } else {
                        textView2.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                }
                if (strArr[i8].equals("HRVATSKI (HR)") && sharedPreferences.contains("language")) {
                    if (sharedPreferences.getString("language", null).equals("hr")) {
                        textView2.setText("SELECTED");
                    } else {
                        textView2.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                }
                if (strArr[i8].equals("POLSKI (PL)") && sharedPreferences.contains("language")) {
                    if (sharedPreferences.getString("language", null).equals("pl")) {
                        textView2.setText("SELECTED");
                    } else {
                        textView2.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                }
                if (strArr[i8].equals("PORTUGUESA (PT)(BR)") && sharedPreferences.contains("language")) {
                    if (sharedPreferences.getString("language", null).equals("pt")) {
                        textView2.setText("SELECTED");
                    } else {
                        textView2.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                }
                if (strArr[i8].equals("ESPAÑOLA (ES)") && sharedPreferences.contains("language")) {
                    if (sharedPreferences.getString("language", null).equals("es")) {
                        textView2.setText("SELECTED");
                    } else {
                        textView2.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                }
                if (strArr[i8].equals("ROMÂNĂ (RO)") && sharedPreferences.contains("language")) {
                    if (sharedPreferences.getString("language", null).equals("ro")) {
                        textView2.setText("SELECTED");
                    } else {
                        textView2.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                }
                if (strArr[i8].equals("RUSSAIN (RU)") && sharedPreferences.contains("language")) {
                    if (sharedPreferences.getString("language", null).equals("ru")) {
                        textView2.setText("SELECTED");
                    } else {
                        textView2.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                }
                if (strArr[i8].equals("SVENSKA (SV)") && sharedPreferences.contains("language")) {
                    if (sharedPreferences.getString("language", null).equals("sv")) {
                        textView2.setText("SELECTED");
                    } else {
                        textView2.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                }
                if (strArr[i8].equals("TURKISH (TR)") && sharedPreferences.contains("language")) {
                    if (sharedPreferences.getString("language", null).equals("tr")) {
                        textView2.setText("SELECTED");
                    } else {
                        textView2.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                }
                return viewInflate;
            default:
                SharedPreferences sharedPreferences2 = context.getSharedPreferences("pe.hf.black20", 0);
                View viewInflate2 = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.activity_other_settings_item, (ViewGroup) null);
                TextView textView3 = (TextView) viewInflate2.findViewById(R.id.txt_item);
                TextView textView4 = (TextView) viewInflate2.findViewById(R.id.txt_status);
                textView3.setText(strArr[i8]);
                if (strArr[i8].equals(context.getString(R.string.xc_auto_sleep))) {
                    if (!sharedPreferences2.contains("sleep_mode")) {
                        textView4.setText(context.getString(R.string.xc_on));
                    } else if (sharedPreferences2.getString("sleep_mode", null).equals("on")) {
                        textView4.setText(context.getString(R.string.xc_on));
                        textView4.setTextColor(Color.parseColor("#A4C639"));
                    } else {
                        textView4.setText(context.getString(R.string.xc_off));
                        textView4.setTextColor(-65536);
                    }
                }
                if (strArr[i8].equals("Load EPG")) {
                    if (sharedPreferences2.contains("epg_load_day")) {
                        if (sharedPreferences2.getString("epg_load_day", null).equals("24")) {
                            textView4.setText("1 Day");
                        }
                        if (sharedPreferences2.getString("epg_load_day", null).equals("48")) {
                            textView4.setText("2 Days");
                        }
                        if (sharedPreferences2.getString("epg_load_day", null).equals("72")) {
                            textView4.setText("3 Days");
                        }
                    } else {
                        textView4.setText("1 Day");
                    }
                }
                if (strArr[i8].equals(context.getString(R.string.full_screen_notch_display))) {
                    if (!sharedPreferences2.contains("cutout")) {
                        textView4.setText(context.getString(R.string.xc_on));
                    } else if (sharedPreferences2.getString("cutout", null).equals("on")) {
                        textView4.setText(context.getString(R.string.xc_on));
                        textView4.setTextColor(Color.parseColor("#A4C639"));
                    } else {
                        textView4.setText(context.getString(R.string.xc_off));
                        textView4.setTextColor(-65536);
                    }
                }
                if (strArr[i8].equals(context.getString(R.string.live_tv_enable_media_control))) {
                    if (sharedPreferences2.contains("livetv_mediacontrol") && sharedPreferences2.getString("livetv_mediacontrol", null).equals("on")) {
                        textView4.setText(context.getString(R.string.xc_on));
                        textView4.setTextColor(Color.parseColor("#A4C639"));
                    } else {
                        textView4.setText(context.getString(R.string.xc_off));
                        textView4.setTextColor(-65536);
                    }
                }
                if (strArr[i8].equals(context.getString(R.string.auto_start_app_after_reboot))) {
                    if (sharedPreferences2.contains("auto_start") && sharedPreferences2.getString("auto_start", null).equals("yes")) {
                        textView4.setText(context.getString(R.string.xc_on));
                        textView4.setTextColor(Color.parseColor("#A4C639"));
                    } else {
                        textView4.setText(context.getString(R.string.xc_off));
                        textView4.setTextColor(-65536);
                    }
                }
                if (strArr[i8].equals(context.getString(R.string.reset_volume))) {
                    textView4.setVisibility(8);
                }
                if (strArr[i8].equals(context.getString(R.string.time_format))) {
                    if (!sharedPreferences2.contains("time_format")) {
                        textView4.setText("12 Hr");
                    } else if (sharedPreferences2.getString("time_format", null).equals("12")) {
                        textView4.setText("12 Hr");
                        textView4.setTextColor(-1);
                    } else {
                        textView4.setText("24 Hr");
                        textView4.setTextColor(-1);
                    }
                }
                if (strArr[i8].equals(context.getString(R.string.xc_app_logs))) {
                    textView4.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                }
                if (strArr[i8].equals(context.getString(R.string.service_status))) {
                    textView4.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                }
                if (strArr[i8].equals("Open Source Licenses")) {
                    textView4.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                }
                if (strArr[i8].equals(context.getString(R.string.load_last_live_tv_channel))) {
                    textView4.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    if (sharedPreferences2.contains("load_last_channel") && sharedPreferences2.getString("load_last_channel", null).equals("yes")) {
                        textView4.setText(context.getString(R.string.xc_on));
                        textView4.setTextColor(Color.parseColor("#A4C639"));
                    } else {
                        textView4.setText(context.getString(R.string.xc_off));
                        textView4.setTextColor(-65536);
                    }
                }
                if (strArr[i8].equals("Catchup EPG Timeshift")) {
                    textView4.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    if (!sharedPreferences2.contains("catchup_epg_timeshift")) {
                        textView4.setText(context.getString(R.string.xc_on));
                        textView4.setTextColor(-16711936);
                    } else if (sharedPreferences2.getString("catchup_epg_timeshift", null).equals("yes")) {
                        textView4.setText(context.getString(R.string.xc_on));
                        textView4.setTextColor(Color.parseColor("#A4C639"));
                    } else {
                        textView4.setText(context.getString(R.string.xc_off));
                        textView4.setTextColor(-65536);
                    }
                }
                if (strArr[i8].equals("OTR Layout")) {
                    textView4.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    if (Methods.R(context)) {
                        textView4.setText(context.getString(R.string.xc_on));
                        textView4.setTextColor(Color.parseColor("#A4C639"));
                    } else {
                        textView4.setText(context.getString(R.string.xc_off));
                        textView4.setTextColor(-65536);
                    }
                }
                return viewInflate2;
        }
    }
}
