.class public final synthetic Lo3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic G:Lo3/i;

.field public final synthetic H:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic I:I

.field public final synthetic J:I

.field public final synthetic K:I


# direct methods
.method public synthetic constructor <init>(Lo3/i;Ljava/util/concurrent/atomic/AtomicInteger;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo3/h;->G:Lo3/i;

    .line 5
    .line 6
    iput-object p2, p0, Lo3/h;->H:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    iput p3, p0, Lo3/h;->I:I

    .line 9
    .line 10
    iput p4, p0, Lo3/h;->J:I

    .line 11
    .line 12
    iput p5, p0, Lo3/h;->K:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    iget-object p1, p0, Lo3/h;->G:Lo3/i;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lo3/h;->H:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lo3/h;->I:I

    .line 13
    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget v1, p0, Lo3/h;->J:I

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    iget-object v3, p1, Lo3/i;->b:Lcom/google/android/gms/internal/ads/qo;

    .line 24
    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    sget-object p2, Lcom/google/android/gms/internal/ads/mo;->H:Lcom/google/android/gms/internal/ads/mo;

    .line 28
    .line 29
    invoke-virtual {v3, p2, v2}, Lcom/google/android/gms/internal/ads/qo;->k(Lcom/google/android/gms/internal/ads/mo;Z)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iget v0, p0, Lo3/h;->K:I

    .line 38
    .line 39
    if-ne p2, v0, :cond_1

    .line 40
    .line 41
    sget-object p2, Lcom/google/android/gms/internal/ads/mo;->I:Lcom/google/android/gms/internal/ads/mo;

    .line 42
    .line 43
    invoke-virtual {v3, p2, v2}, Lcom/google/android/gms/internal/ads/qo;->k(Lcom/google/android/gms/internal/ads/mo;Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    sget-object p2, Lcom/google/android/gms/internal/ads/mo;->G:Lcom/google/android/gms/internal/ads/mo;

    .line 48
    .line 49
    invoke-virtual {v3, p2, v2}, Lcom/google/android/gms/internal/ads/qo;->k(Lcom/google/android/gms/internal/ads/mo;Z)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lo3/i;->b()V

    .line 53
    .line 54
    .line 55
    return-void
.end method
