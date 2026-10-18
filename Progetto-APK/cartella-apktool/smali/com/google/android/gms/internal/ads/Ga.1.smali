.class public final Lcom/google/android/gms/internal/ads/Ga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ve;
.implements Lcom/google/android/gms/internal/ads/ue;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/Fa;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Fa;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/Ga;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ga;->H:Lcom/google/android/gms/internal/ads/Fa;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Fa;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/Ga;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ga;->H:Lcom/google/android/gms/internal/ads/Fa;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Ga;->G:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ga;->H:Lcom/google/android/gms/internal/ads/Fa;

    packed-switch v0, :pswitch_data_0

    .line 1
    const-string v0, "Rejecting reference for JS Engine."

    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->a7:Lcom/google/android/gms/internal/ads/J7;

    .line 3
    sget-object v2, Ll3/q;->d:Ll3/q;

    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 4
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to create JS engine reference."

    .line 6
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v2, "SdkJavascriptFactory.createNewReference.FailureCallback"

    invoke-virtual {v1, v2, v0}, Lf/H;->q(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lf/H;->p()V

    :goto_0
    return-void

    .line 8
    :pswitch_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Fa;->d:Lcom/google/android/gms/internal/ads/Ia;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ia;->v()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Ga;->G:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ga;->H:Lcom/google/android/gms/internal/ads/Fa;

    packed-switch v0, :pswitch_data_0

    .line 10
    check-cast p1, Lcom/google/android/gms/internal/ads/La;

    const-string p1, "Releasing engine reference."

    .line 11
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 12
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/Fa;->d:Lcom/google/android/gms/internal/ads/Ia;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ia;->v()V

    return-void

    .line 14
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/xa;

    .line 15
    const-string v0, "Getting a new session for JS Engine."

    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/Ma;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/Ma;-><init>(Lcom/google/android/gms/internal/ads/La;)V

    .line 18
    iget-object p1, v1, Lf/H;->a:Ljava/lang/Object;

    .line 19
    check-cast p1, Lcom/google/android/gms/internal/ads/te;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/te;->b(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
