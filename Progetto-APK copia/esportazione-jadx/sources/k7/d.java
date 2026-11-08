package k7;

import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.TextView;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import p104n2.t;
import pe.hf.black20.speedtest.SpeedTestActivity;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f26034G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ a f26035H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ t f26036I;

    public /* synthetic */ d(t tVar, a aVar, int i8) {
        this.f26034G = i8;
        this.f26036I = tVar;
        this.f26035H = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        double dDoubleValue;
        int i8 = this.f26034G;
        a aVar = this.f26035H;
        t tVar = this.f26036I;
        switch (i8) {
            case 0:
                RotateAnimation rotateAnimation = new RotateAnimation(SpeedTestActivity.f29343K, SpeedTestActivity.f29342J, 1, 0.5f, 1, 0.5f);
                tVar.f27471I = rotateAnimation;
                rotateAnimation.setInterpolator(new LinearInterpolator());
                ((RotateAnimation) tVar.f27471I).setDuration(100L);
                ((TextView) tVar.f27473K).setText(((DecimalFormat) ((W4.a) tVar.f27474L).f7481I).format(aVar.f26021M) + " Mbps");
                break;
            default:
                TextView textView = (TextView) tVar.f27473K;
                StringBuilder sb = new StringBuilder();
                DecimalFormat decimalFormat = (DecimalFormat) ((W4.a) tVar.f27474L).f7481I;
                try {
                    dDoubleValue = new BigDecimal(aVar.f26019K).setScale(2, RoundingMode.HALF_UP).doubleValue();
                } catch (Exception unused) {
                    dDoubleValue = 0.0d;
                }
                sb.append(decimalFormat.format(dDoubleValue));
                sb.append(" Mbps");
                textView.setText(sb.toString());
                break;
        }
    }
}
