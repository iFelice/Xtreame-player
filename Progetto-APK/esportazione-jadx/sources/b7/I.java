package b7;

import android.app.AlertDialog;
import android.view.View;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import pe.hf.black20.ChannelPickerActivity;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public final class I implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10031G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f10032H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ ChannelPickerActivity f10033I;

    public /* synthetic */ I(ChannelPickerActivity channelPickerActivity, AlertDialog alertDialog, int i8) {
        this.f10031G = i8;
        this.f10033I = channelPickerActivity;
        this.f10032H = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10031G;
        AlertDialog alertDialog = this.f10032H;
        switch (i8) {
            case 0:
                alertDialog.dismiss();
                break;
            case 1:
                alertDialog.dismiss();
                break;
            case 2:
                alertDialog.dismiss();
                break;
            default:
                if (!p000a.r.s(ChannelPickerActivity.f28481K0)) {
                    ChannelPickerActivity channelPickerActivity = this.f10033I;
                    if (channelPickerActivity.f28514c0.getText().toString().equals("00:00")) {
                        channelPickerActivity.f28514c0.setError(HttpUrl.FRAGMENT_ENCODE_SET);
                    } else if (!channelPickerActivity.f28513b0.getText().toString().equals("00 000 0000")) {
                        Date date = null;
                        channelPickerActivity.f28523l0 = channelPickerActivity.f28497L.getString("rec_path", null);
                        String strReplaceAll = channelPickerActivity.f28524m0.replaceAll("[^a-zA-Z0-9]", HttpUrl.FRAGMENT_ENCODE_SET).replaceAll(" ", HttpUrl.FRAGMENT_ENCODE_SET);
                        c7.c cVar = channelPickerActivity.f28494J;
                        String str = channelPickerActivity.f28523l0 + MqttTopic.TOPIC_LEVEL_SEPARATOR + strReplaceAll + Methods.F() + ".mp4";
                        String str2 = channelPickerActivity.f28524m0;
                        String str3 = channelPickerActivity.f28525n0;
                        String string = ChannelPickerActivity.f28481K0.getText().toString();
                        String str4 = channelPickerActivity.f28520i0 + "-" + channelPickerActivity.f28519h0 + "-" + channelPickerActivity.f28518g0 + "-" + channelPickerActivity.f28521j0 + "-" + channelPickerActivity.f28522k0;
                        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd-HH-mm");
                        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("MMM dd, yyyy HH:mm");
                        try {
                            date = simpleDateFormat.parse(str4);
                            break;
                        } catch (ParseException unused) {
                        }
                        cVar.N(str, str2, str3, "Scheduled", string, simpleDateFormat2.format(date));
                        alertDialog.dismiss();
                    } else {
                        channelPickerActivity.f28513b0.setError(HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                } else {
                    ChannelPickerActivity.f28481K0.setError("Lenght must be greater than 1. ");
                }
                break;
        }
    }
}
