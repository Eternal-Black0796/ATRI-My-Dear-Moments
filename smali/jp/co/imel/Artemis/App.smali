.class public Ljp/co/imel/Artemis/App;
.super Landroid/app/Application;
.source "App.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 13
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 20
    invoke-static {p0, v0, v1}, Lcom/deploygate/sdk/DeployGate;->install(Landroid/app/Application;Lcom/deploygate/sdk/DeployGateCallback;Z)V

    .line 23
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, v0}, Ljp/co/imel/Artemis/App;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v2, "system_emergency.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "App.java"

    const-string v2, "delete(system_emergency.dat)"

    .line 25
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method
