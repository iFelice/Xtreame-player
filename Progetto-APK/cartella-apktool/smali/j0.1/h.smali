.class public final Lj0/h;
.super Landroid/media/VolumeProvider;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lj0/l;


# direct methods
.method public constructor <init>(Lj0/l;IIILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/h;->a:Lj0/l;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/media/VolumeProvider;-><init>(IIILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAdjustVolume(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lj0/h;->a:Lj0/l;

    .line 2
    .line 3
    check-cast v0, LE1/x;

    .line 4
    .line 5
    iget-object v1, v0, LE1/x;->g:LE1/y;

    .line 6
    .line 7
    iget-object v1, v1, LE1/y;->c:LE1/A;

    .line 8
    .line 9
    iget-object v1, v1, LE1/A;->n:LE1/v;

    .line 10
    .line 11
    new-instance v2, LE1/w;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v2, v0, p1, v3}, LE1/w;-><init>(LE1/x;II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onSetVolumeTo(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lj0/h;->a:Lj0/l;

    .line 2
    .line 3
    check-cast v0, LE1/x;

    .line 4
    .line 5
    iget-object v1, v0, LE1/x;->g:LE1/y;

    .line 6
    .line 7
    iget-object v1, v1, LE1/y;->c:LE1/A;

    .line 8
    .line 9
    iget-object v1, v1, LE1/A;->n:LE1/v;

    .line 10
    .line 11
    new-instance v2, LE1/w;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, v0, p1, v3}, LE1/w;-><init>(LE1/x;II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
