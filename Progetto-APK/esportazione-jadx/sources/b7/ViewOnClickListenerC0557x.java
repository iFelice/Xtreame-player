package b7;

import android.app.AlertDialog;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import com.google.protobuf.U2;
import okhttp3.HttpUrl;
import p086l.ViewOnClickListenerC3020c;
import pe.hf.black20.ChannelListActivity;
import pe.hf.black20.R;

/* JADX INFO: renamed from: b7.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class ViewOnClickListenerC0557x implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10522G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ ChannelListActivity f10523H;

    public /* synthetic */ ViewOnClickListenerC0557x(ChannelListActivity channelListActivity, int i8) {
        this.f10522G = i8;
        this.f10523H = channelListActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10522G;
        ChannelListActivity channelListActivity = this.f10523H;
        switch (i8) {
            case 0:
                View viewInflate = LayoutInflater.from(channelListActivity.f28444G).inflate(R.layout.xciptv_dialog_add_fav_profile, (ViewGroup) null);
                AlertDialog alertDialogCreate = new AlertDialog.Builder(channelListActivity.f28444G).create();
                EditText editText = (EditText) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.profile_name);
                Button button = (Button) viewInflate.findViewById(R.id.btn_add_fav_profile);
                Button button2 = (Button) viewInflate.findViewById(R.id.btn_cancel_add_fav);
                button.setOnClickListener(new W4.a(this, editText, alertDialogCreate, 1));
                button2.setOnClickListener(new ViewOnClickListenerC3020c(3, this, alertDialogCreate));
                alertDialogCreate.show();
                break;
            case 1:
                channelListActivity.f28477n0.setVisibility(8);
                break;
            case 2:
                channelListActivity.f28464a0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                channelListActivity.f28464a0.requestFocus();
                channelListActivity.f28467d0.setVisibility(0);
                ((InputMethodManager) channelListActivity.f28464a0.getContext().getSystemService("input_method")).showSoftInput(channelListActivity.f28464a0, 1);
                break;
            case 3:
                if (ChannelListActivity.f28436r0.equals("default") || ChannelListActivity.f28436r0.equals("NEW") || ChannelListActivity.f28436r0.equals("OLD")) {
                    ChannelListActivity.f28436r0 = "DESC";
                    ImageButton imageButton = channelListActivity.f28459V;
                    ChannelListActivity channelListActivity2 = channelListActivity.f28444G;
                    imageButton.setBackground(channelListActivity2.getDrawable(R.drawable.btn_sort_za));
                    channelListActivity.f28460W.setBackground(channelListActivity2.getDrawable(R.drawable.btn_sort_on));
                } else if (ChannelListActivity.f28436r0.equals("ASC")) {
                    ChannelListActivity.f28436r0 = "DESC";
                    ImageButton imageButton2 = channelListActivity.f28459V;
                    ChannelListActivity channelListActivity3 = channelListActivity.f28444G;
                    imageButton2.setBackground(channelListActivity3.getDrawable(R.drawable.btn_sort_za));
                    channelListActivity.f28460W.setBackground(channelListActivity3.getDrawable(R.drawable.btn_sort_on));
                } else if (ChannelListActivity.f28436r0.equals("DESC")) {
                    ChannelListActivity.f28436r0 = "ASC";
                    ImageButton imageButton3 = channelListActivity.f28459V;
                    ChannelListActivity channelListActivity4 = channelListActivity.f28444G;
                    imageButton3.setBackground(channelListActivity4.getDrawable(R.drawable.btn_sort_az));
                    channelListActivity.f28460W.setBackground(channelListActivity4.getDrawable(R.drawable.btn_sort_on));
                }
                ChannelListActivity.b(channelListActivity);
                break;
            case 4:
                if (ChannelListActivity.f28436r0.equals("default") || ChannelListActivity.f28436r0.equals("DESC") || ChannelListActivity.f28436r0.equals("ASC")) {
                    ChannelListActivity.f28436r0 = "NEW";
                    ImageButton imageButton4 = channelListActivity.f28460W;
                    ChannelListActivity channelListActivity5 = channelListActivity.f28444G;
                    imageButton4.setBackground(channelListActivity5.getDrawable(R.drawable.btn_sort_no));
                    channelListActivity.f28459V.setBackground(channelListActivity5.getDrawable(R.drawable.btn_sort_az));
                } else if (ChannelListActivity.f28436r0.equals("NEW")) {
                    ChannelListActivity.f28436r0 = "OLD";
                    ImageButton imageButton5 = channelListActivity.f28460W;
                    ChannelListActivity channelListActivity6 = channelListActivity.f28444G;
                    imageButton5.setBackground(channelListActivity6.getDrawable(R.drawable.btn_sort_on));
                    channelListActivity.f28459V.setBackground(channelListActivity6.getDrawable(R.drawable.btn_sort_az));
                } else if (ChannelListActivity.f28436r0.equals("OLD")) {
                    ChannelListActivity.f28436r0 = "NEW";
                    ImageButton imageButton6 = channelListActivity.f28460W;
                    ChannelListActivity channelListActivity7 = channelListActivity.f28444G;
                    imageButton6.setBackground(channelListActivity7.getDrawable(R.drawable.btn_sort_no));
                    channelListActivity.f28459V.setBackground(channelListActivity7.getDrawable(R.drawable.btn_sort_az));
                }
                ChannelListActivity.b(channelListActivity);
                break;
            case 5:
                channelListActivity.f28464a0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                channelListActivity.f28467d0.setVisibility(8);
                ((InputMethodManager) channelListActivity.f28444G.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
                break;
            default:
                if (!p000a.r.s(channelListActivity.f28464a0)) {
                    ((InputMethodManager) channelListActivity.getSystemService("input_method")).hideSoftInputFromWindow(channelListActivity.f28464a0.getWindowToken(), 0);
                    channelListActivity.f28469f0 = "yes";
                    if (U2.z("ORT_WHICH_CAT", "TV", "TV")) {
                        new D(channelListActivity, 6).execute(new Void[0]);
                    } else if (U2.z("ORT_WHICH_CAT", "TV", "FAV")) {
                        new D(channelListActivity, 6).execute(new Void[0]);
                    } else if (U2.z("ORT_WHICH_CAT", "TV", "CATCHUP") || U2.z("ORT_WHICH_CAT", "TV", "RADIO")) {
                        new D(channelListActivity, 6).execute(new Void[0]);
                    } else if (U2.z("ORT_WHICH_CAT", "TV", "VOD")) {
                        new D(channelListActivity, (A) null).execute(new Void[0]);
                    } else if (U2.z("ORT_WHICH_CAT", "TV", "SERIES")) {
                        new D(channelListActivity, (AbstractC0559y) null).execute(new Void[0]);
                    }
                    channelListActivity.f28467d0.setVisibility(8);
                } else {
                    channelListActivity.f28464a0.setError(channelListActivity.f28444G.getString(R.string.xc_search_empty));
                }
                break;
        }
    }
}
