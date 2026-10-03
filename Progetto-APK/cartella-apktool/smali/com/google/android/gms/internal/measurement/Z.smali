.class public final Lcom/google/android/gms/internal/measurement/Z;
.super Lcom/google/android/gms/internal/measurement/i0;
.source "SourceFile"


# instance fields
.field public final synthetic K:I

.field public final synthetic L:Ljava/lang/String;

.field public final synthetic M:Ljava/lang/String;

.field public final synthetic N:Lcom/google/android/gms/internal/measurement/m0;

.field public final synthetic O:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/m0;Lcom/google/android/gms/internal/measurement/W;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/Z;->K:I

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/Z;->O:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/Z;->L:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/Z;->M:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Z;->N:Lcom/google/android/gms/internal/measurement/m0;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/i0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/m0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/google/android/gms/internal/measurement/Z;->K:I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/Z;->L:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/Z;->M:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/Z;->O:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Z;->N:Lcom/google/android/gms/internal/measurement/m0;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/i0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/Z;->K:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Z;->N:Lcom/google/android/gms/internal/measurement/m0;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/m0;->f:Lcom/google/android/gms/internal/measurement/K;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Z;->O:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v2, v0

    .line 16
    check-cast v2, Lcom/google/android/gms/internal/measurement/W;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/Z;->L:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/Z;->M:Ljava/lang/String;

    .line 21
    .line 22
    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/i0;->G:J

    .line 23
    .line 24
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/K;->setCurrentScreenByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;Ljava/lang/String;Ljava/lang/String;J)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Z;->N:Lcom/google/android/gms/internal/measurement/m0;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/m0;->f:Lcom/google/android/gms/internal/measurement/K;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/Z;->L:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/Z;->M:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/Z;->O:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v3, Lcom/google/android/gms/internal/measurement/H;

    .line 42
    .line 43
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Z;->N:Lcom/google/android/gms/internal/measurement/m0;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/m0;->f:Lcom/google/android/gms/internal/measurement/K;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/Z;->L:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/Z;->M:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/Z;->O:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v3, Landroid/os/Bundle;

    .line 61
    .line 62
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/Z;->K:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Z;->O:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/google/android/gms/internal/measurement/H;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/H;->V0(Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
