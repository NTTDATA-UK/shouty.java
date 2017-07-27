package guice;

import com.google.inject.AbstractModule;
import cucumber.api.guice.CucumberScopes;
import shouty.Shouty;

public class TestGuiceModule extends AbstractModule {

    @Override
    protected void configure() {
        bind(Shouty.class).in(CucumberScopes.SCENARIO);
    }
}
