.class public final synthetic Lcom/google/android/gms/internal/cast/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/cast/t;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/t;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/cast/s;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/s;->H:Lcom/google/android/gms/internal/cast/t;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/cast/s;->G:I

    .line 3
    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/s;->H:Lcom/google/android/gms/internal/cast/t;

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/internal/cast/r;

    .line 10
    .line 11
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/cast/r;-><init>(Lcom/google/android/gms/internal/cast/t;I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v2, Lcom/google/android/gms/internal/cast/t;->f:LD3/g;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, LD3/g;->a(LD3/h;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget v1, v2, Lcom/google/android/gms/internal/cast/t;->e:I

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v3, 0x1

    .line 30
    new-array v3, v3, [Ljava/lang/Object;

    .line 31
    .line 32
    aput-object v1, v3, v0

    .line 33
    .line 34
    sget-object v0, Lcom/google/android/gms/internal/cast/t;->i:LH3/b;

    .line 35
    .line 36
    iget-object v1, v0, LH3/b;->a:Ljava/lang/String;

    .line 37
    .line 38
    const-string v4, "transfer with type = %d has timed out"

    .line 39
    .line 40
    invoke-virtual {v0, v4, v3}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const/16 v0, 0x65

    .line 48
    .line 49
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cast/t;->b(I)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
