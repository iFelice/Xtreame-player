.class public final Lq1/c;
.super Lq1/j;
.source "SourceFile"


# instance fields
.field public final synthetic I:LQ0/b;


# direct methods
.method public constructor <init>(LQ0/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq1/c;->I:LQ0/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq1/c;->I:LQ0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lw0/k;->releaseOutputBuffer(Lw0/i;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
