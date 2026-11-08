.class public final Lcom/google/ads/mediation/c;
.super Lq3/b;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/ads/mediation/AbstractAdViewAdapter;

.field public final f:Lr3/j;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lr3/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/mediation/c;->e:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/ads/mediation/c;->f:Lr3/j;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final h(Lf3/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/c;->f:Lr3/j;

    .line 2
    .line 3
    check-cast v0, La3/b;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, La3/b;->h(LB0/w0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lq3/a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/ads/mediation/c;->e:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    .line 4
    .line 5
    iput-object p1, v0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mInterstitialAd:Lq3/a;

    .line 6
    .line 7
    new-instance v1, Lm2/c;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/ads/mediation/c;->f:Lr3/j;

    .line 10
    .line 11
    invoke-direct {v1, v0, v2}, Lm2/c;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lr3/j;)V

    .line 12
    .line 13
    .line 14
    check-cast p1, Lcom/google/android/gms/internal/ads/ra;

    .line 15
    .line 16
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ra;->c:Ll3/J;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    new-instance v0, Ll3/r;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ll3/r;-><init>(Lm2/c;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v0}, Ll3/J;->d3(Ll3/a0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    const-string v0, "#007 Could not call remote method."

    .line 31
    .line 32
    invoke-static {v0, p1}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    check-cast v2, La3/b;

    .line 36
    .line 37
    invoke-virtual {v2}, La3/b;->j()V

    .line 38
    .line 39
    .line 40
    return-void
.end method
