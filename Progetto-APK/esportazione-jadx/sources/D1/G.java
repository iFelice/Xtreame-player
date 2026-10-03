package D1;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver;
import pe.hf.black20.epg.EPGActivityXMLTV;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class G implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f2063G;

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2063G) {
            case 0:
                break;
            case 1:
                int i8 = AlarmManagerSchedulerBroadcastReceiver.f11630a;
                break;
            default:
                if (EPGActivityXMLTV.f29253f0.isShowing()) {
                    EPGActivityXMLTV.f29253f0.dismiss();
                }
                break;
        }
    }
}
