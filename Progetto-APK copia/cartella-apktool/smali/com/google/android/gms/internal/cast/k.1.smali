.class public final synthetic Lcom/google/android/gms/internal/cast/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/cast/n;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/n;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/cast/k;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/k;->H:Lcom/google/android/gms/internal/cast/n;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/k;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/k;->H:Lcom/google/android/gms/internal/cast/n;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/n;->g()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, v1, Lcom/google/android/gms/internal/cast/n;->e:Lm2/c;

    .line 13
    .line 14
    iget-object v2, v0, Lm2/c;->I:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, LE1/H;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    iget-object v2, v0, Lm2/c;->H:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v2}, LE1/H;->d(Landroid/content/Context;)LE1/H;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iput-object v2, v0, Lm2/c;->I:Ljava/lang/Object;

    .line 29
    .line 30
    :cond_0
    iget-object v0, v0, Lm2/c;->I:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, LE1/H;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v1}, LE1/H;->e(LE1/q;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
