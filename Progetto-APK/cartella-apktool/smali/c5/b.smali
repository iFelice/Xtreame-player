.class public abstract Lc5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    sput-object v1, Lc5/b;->a:Ljava/util/HashMap;

    .line 12
    .line 13
    sget-object v2, LV4/C;->G:LV4/C;

    .line 14
    .line 15
    sget-object v3, LV4/O;->H:LV4/O;

    .line 16
    .line 17
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    sget-object v2, LV4/C;->H:LV4/C;

    .line 21
    .line 22
    sget-object v3, LV4/O;->I:LV4/O;

    .line 23
    .line 24
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    sget-object v2, LV4/C;->I:LV4/C;

    .line 28
    .line 29
    sget-object v3, LV4/O;->J:LV4/O;

    .line 30
    .line 31
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    sget-object v2, LV4/C;->J:LV4/C;

    .line 35
    .line 36
    sget-object v3, LV4/O;->K:LV4/O;

    .line 37
    .line 38
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    sget-object v0, LV4/B;->H:LV4/B;

    .line 42
    .line 43
    sget-object v2, LV4/r;->I:LV4/r;

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    sget-object v0, LV4/B;->I:LV4/B;

    .line 49
    .line 50
    sget-object v2, LV4/r;->J:LV4/r;

    .line 51
    .line 52
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    sget-object v0, LV4/B;->J:LV4/B;

    .line 56
    .line 57
    sget-object v2, LV4/r;->K:LV4/r;

    .line 58
    .line 59
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    sget-object v0, LV4/B;->G:LV4/B;

    .line 63
    .line 64
    sget-object v2, LV4/r;->H:LV4/r;

    .line 65
    .line 66
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public static a()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->newBuilder()LV4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/b1;->d()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/protobuf/b1;->H:Lcom/google/protobuf/i1;

    .line 9
    .line 10
    check-cast v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics;

    .line 11
    .line 12
    const-string v1, "21.0.2"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics;->access$2100(Lcom/google/firebase/inappmessaging/CampaignAnalytics;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    throw v0
.end method
