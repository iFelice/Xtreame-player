.class public final LB0/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:LB0/L;

.field public final b:Lp0/q;

.field public final synthetic c:LB0/c;


# direct methods
.method public constructor <init>(LB0/c;Lp0/I;LB0/L;)V
    .locals 0

    .line 1
    iput-object p1, p0, LB0/b;->c:LB0/c;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, LB0/b;->b:Lp0/q;

    .line 7
    .line 8
    iput-object p3, p0, LB0/b;->a:LB0/L;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    const-string p1, "android.media.AUDIO_BECOMING_NOISY"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p1, La/b;

    .line 14
    .line 15
    const/16 p2, 0x9

    .line 16
    .line 17
    invoke-direct {p1, p0, p2}, La/b;-><init>(Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, LB0/b;->b:Lp0/q;

    .line 21
    .line 22
    check-cast p2, Lp0/I;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Lp0/I;->c(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
