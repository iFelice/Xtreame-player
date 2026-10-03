.class public final synthetic Lv3/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:Lv3/x;

.field public final synthetic H:Z

.field public final synthetic I:Z


# direct methods
.method public synthetic constructor <init>(Lv3/x;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv3/w;->G:Lv3/x;

    .line 5
    .line 6
    iput-boolean p2, p0, Lv3/w;->H:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lv3/w;->I:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv3/w;->G:Lv3/x;

    .line 2
    .line 3
    iget-boolean v1, p0, Lv3/w;->H:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lv3/w;->I:Z

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lv3/x;->e(ZZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
