.class public final Lc4/T0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:Lc4/S0;

.field public final synthetic H:Lc4/S0;

.field public final synthetic I:J

.field public final synthetic J:Z

.field public final synthetic K:Lc4/V0;


# direct methods
.method public constructor <init>(Lc4/V0;Lc4/S0;Lc4/S0;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lc4/T0;->G:Lc4/S0;

    .line 5
    .line 6
    iput-object p3, p0, Lc4/T0;->H:Lc4/S0;

    .line 7
    .line 8
    iput-wide p4, p0, Lc4/T0;->I:J

    .line 9
    .line 10
    iput-boolean p6, p0, Lc4/T0;->J:Z

    .line 11
    .line 12
    iput-object p1, p0, Lc4/T0;->K:Lc4/V0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const/4 v6, 0x0

    .line 2
    iget-object v0, p0, Lc4/T0;->K:Lc4/V0;

    .line 3
    .line 4
    iget-object v1, p0, Lc4/T0;->G:Lc4/S0;

    .line 5
    .line 6
    iget-object v2, p0, Lc4/T0;->H:Lc4/S0;

    .line 7
    .line 8
    iget-wide v3, p0, Lc4/T0;->I:J

    .line 9
    .line 10
    iget-boolean v5, p0, Lc4/T0;->J:Z

    .line 11
    .line 12
    invoke-virtual/range {v0 .. v6}, Lc4/V0;->r(Lc4/S0;Lc4/S0;JZLandroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
